using System.Windows;
using System.IO;
using System.Collections.Generic;
using Microsoft.Win32;
using System;
using System.Windows.Input;
using System.Windows.Controls;

namespace 知识点再认器
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        static string filePath = null;
        static List<string> lines = new List<string>();
        static List<string> backup = new List<string>();
        static List<string> notRemberList = new List<string>();
        static int max = 0;
        static int p = 0;
        static Random r = new Random();
        public MainWindow()
        {
            InitializeComponent();
        }
        private void loadfile(object sender, RoutedEventArgs e)
        {
            var ofd = new OpenFileDialog();
            ofd.Title = "选择知识库";
            ofd.Filter = "文本文件|*.txt";
            ofd.ShowDialog();
            filePath = ofd.FileName;

            Startup(File.ReadAllLines(filePath));
            progress.Visibility = Visibility.Visible;
            GetNextOne(sender, e);
        }
        private void Startup(string[] lis)
        {
            lines.Clear();
            lines.AddRange(lis);
            backup.Clear();
            notRemberList.Clear();
            max = lines.Count;
            p = 0;
            model.Text = Models.Text;
        }
        private void MainWindows_Keydown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Right)
            {
                GetNextOne(sender, null);
            }
            else if (e.Key == Key.Left)
            {
                GetPreviousOne(sender, null);
            }
        }
        private void Save(object sender, RoutedEventArgs e)
        {
            notRemberList.Add(Card.Text);
        }


        private void GetNextOne(object sender, RoutedEventArgs e)
        {
            if (p < max)
            {
                p++;
                int tem = r.Next(0, lines.Count);
                progress.Text = $"{p}/{max}";
                Card.Text = lines[tem];
                backup.Add(lines[tem]);
                lines.RemoveAt(tem);
            }
            else
            {
                Card.Text = "End";
            }
        }


        private void GetPreviousOne(object sender, RoutedEventArgs e)
        {
            if (p > 1)
            {
                p--;
                Card.Text = backup[p - 1];
                progress.Text = $"{p}/{max}";
                lines.Add(backup[p]);
                backup.RemoveAt(p);
            }
        }





        private void NewLinesAgain(object sender, RoutedEventArgs e)
        {
            Startup(notRemberList.ToArray());
            GetNextOne(sender, e);
        }

        private void SameAgain(object sender, RoutedEventArgs e)
        {
            Startup(File.ReadAllLines(filePath));
            GetNextOne(sender, e);
        }

    }
}
