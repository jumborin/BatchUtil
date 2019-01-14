using System;
using System.Drawing;
using System.Windows.Forms;

public class MainClass{
	static void Main(){
		Application.EnableVisualStyles();
		Application.Run(new MainForm());
	}
}

public class MainForm : Form{
	private Button topLeftButton;
	private Button topRightButton;
	private Button bottomLeftButton;
	private Button bottomRightButton;
	private TextBox textBox;
	
	public MainForm(){
		this.Load += new EventHandler(MainForm_Load);
	}
	
	private void MainForm_Load(object sender, System.EventArgs e){
		//this.WindowState = FormWindowState.Maximized;
		this.Location = new Point(0,0);
		this.Text = "�T���v���A�v���P�[�V����";
		this.MaximizeBox = false;
		this.MinimizeBox = false;
		this.FormBorderStyle = FormBorderStyle.Fixed3D;
		this.Size = new Size(700,770);
		this.setupTextBox();
		this.setupTopLeftButton();
		this.setupTopRightButton();
		this.setupBottomLeftButton();
		this.setupBottomRightButton();
	}
	
	private void setupTextBox(){
		textBox = new TextBox();
		textBox.TextAlign = HorizontalAlignment.Left;
		textBox.Dock = DockStyle.Top;
		textBox.Text = "1�s��\r\n2�s��\r\n3�s��\r\n4�s��\r\n5�s��\r\n6�s��\r\n7�s��";
		textBox.Width = 600;
		textBox.Height = 330;
		textBox.Multiline = true;
		textBox.Enabled = false;
		textBox.AutoSize = true;
		this.Controls.Add(textBox);
	}
	
	private void setupTopLeftButton(){
		topLeftButton = new Button();
		topLeftButton.Text = "topLeftButton";
		topLeftButton.Height = 100;
		topLeftButton.Dock = DockStyle.Bottom;
		topLeftButton.Click += new EventHandler(topLeftButton_Click);
		this.Controls.Add(topLeftButton);
	}
	
	private void topLeftButton_Click(object sender, EventArgs e){
		topLeftButton.Text = "�N���b�N����܂���";
	}
	
	private void setupTopRightButton(){
		topRightButton = new Button();
		topRightButton.Text = "topRightButton";
		topRightButton.Height = 100;
		topRightButton.Dock = DockStyle.Bottom;
		topRightButton.Click += new EventHandler(topRightButton_Click);
		this.Controls.Add(topRightButton);
	}
	
	private void topRightButton_Click(object sender, EventArgs e){
		topRightButton.Text = "�N���b�N����܂���";
	}
	
	private void setupBottomLeftButton(){
		bottomLeftButton = new Button();
		bottomLeftButton.Text = "bottomLeftButton";
		bottomLeftButton.Height = 100;
		bottomLeftButton.Dock = DockStyle.Bottom;
		bottomLeftButton.Click += new EventHandler(bottomLeftButton_Click);
		this.Controls.Add(bottomLeftButton);
	}
	
	private void bottomLeftButton_Click(object sender, EventArgs e){
		bottomLeftButton.Text = "�N���b�N����܂���";
	}
	
	private void setupBottomRightButton(){
		bottomRightButton = new Button();
		bottomRightButton.Text = "bottomRightButton";
		bottomRightButton.Height = 100;
		bottomRightButton.Dock = DockStyle.Bottom;
		bottomRightButton.Click += new EventHandler(bottomRightButton_Click);
		this.Controls.Add(bottomRightButton);
	}
	
	private void bottomRightButton_Click(object sender, EventArgs e){
		bottomRightButton.Text = "�N���b�N����܂���";
	}
}