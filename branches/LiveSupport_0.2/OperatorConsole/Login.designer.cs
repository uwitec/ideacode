namespace LiveSupport.OperatorConsole
{
    partial class Login
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Login));
            this.lblOpName = new System.Windows.Forms.Label();
            this.txtOpName = new System.Windows.Forms.TextBox();
            this.txtOpPassword = new System.Windows.Forms.TextBox();
            this.lblOpPassword = new System.Windows.Forms.Label();
            this.btnCancel = new System.Windows.Forms.Button();
            this.btnOK = new System.Windows.Forms.Button();
            this.pnlLogIn = new System.Windows.Forms.Panel();
            this.lblHint = new System.Windows.Forms.Label();
            this.lblAuthenticate = new System.Windows.Forms.Label();
            this.picLogIn = new System.Windows.Forms.PictureBox();
            this.txtUserName = new System.Windows.Forms.TextBox();
            this.lblUserName = new System.Windows.Forms.Label();
            this.cbxPassword = new System.Windows.Forms.CheckBox();
            this.cbxAutoLogin = new System.Windows.Forms.CheckBox();
            this.linkLabel1 = new System.Windows.Forms.LinkLabel();
            this.linkLabel2 = new System.Windows.Forms.LinkLabel();
            this.pnlLogIn.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picLogIn)).BeginInit();
            this.SuspendLayout();
            // 
            // lblOpName
            // 
            this.lblOpName.AutoSize = true;
            this.lblOpName.Location = new System.Drawing.Point(24, 89);
            this.lblOpName.Name = "lblOpName";
            this.lblOpName.Size = new System.Drawing.Size(65, 12);
            this.lblOpName.TabIndex = 0;
            this.lblOpName.Text = "��ϯ�û���";
            // 
            // txtOpName
            // 
            this.txtOpName.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtOpName.Location = new System.Drawing.Point(101, 87);
            this.txtOpName.Name = "txtOpName";
            this.txtOpName.Size = new System.Drawing.Size(154, 21);
            this.txtOpName.TabIndex = 1;
            // 
            // txtOpPassword
            // 
            this.txtOpPassword.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtOpPassword.Location = new System.Drawing.Point(101, 120);
            this.txtOpPassword.Name = "txtOpPassword";
            this.txtOpPassword.PasswordChar = '*';
            this.txtOpPassword.Size = new System.Drawing.Size(154, 21);
            this.txtOpPassword.TabIndex = 3;
            // 
            // lblOpPassword
            // 
            this.lblOpPassword.AutoSize = true;
            this.lblOpPassword.Location = new System.Drawing.Point(24, 122);
            this.lblOpPassword.Name = "lblOpPassword";
            this.lblOpPassword.Size = new System.Drawing.Size(65, 12);
            this.lblOpPassword.TabIndex = 2;
            this.lblOpPassword.Text = "��      ��";
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(274, 159);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 21);
            this.btnCancel.TabIndex = 4;
            this.btnCancel.Text = "ȡ��(&C)";
            this.btnCancel.UseVisualStyleBackColor = true;
            this.btnCancel.Click += new System.EventHandler(this.btnCancel_Click);
            // 
            // btnOK
            // 
            this.btnOK.Location = new System.Drawing.Point(195, 159);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(75, 21);
            this.btnOK.TabIndex = 5;
            this.btnOK.Text = "��½(&L)";
            this.btnOK.UseVisualStyleBackColor = true;
            this.btnOK.Click += new System.EventHandler(this.btnOK_Click);
            // 
            // pnlLogIn
            // 
            this.pnlLogIn.BackColor = System.Drawing.Color.White;
            this.pnlLogIn.Controls.Add(this.lblHint);
            this.pnlLogIn.Controls.Add(this.lblAuthenticate);
            this.pnlLogIn.Controls.Add(this.picLogIn);
            this.pnlLogIn.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnlLogIn.Location = new System.Drawing.Point(0, 0);
            this.pnlLogIn.Name = "pnlLogIn";
            this.pnlLogIn.Size = new System.Drawing.Size(369, 51);
            this.pnlLogIn.TabIndex = 6;
            // 
            // lblHint
            // 
            this.lblHint.AutoSize = true;
            this.lblHint.Location = new System.Drawing.Point(98, 27);
            this.lblHint.Name = "lblHint";
            this.lblHint.Size = new System.Drawing.Size(143, 12);
            this.lblHint.TabIndex = 2;
            this.lblHint.Text = "��������ϯ�û���������.";
            // 
            // lblAuthenticate
            // 
            this.lblAuthenticate.AutoSize = true;
            this.lblAuthenticate.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblAuthenticate.Location = new System.Drawing.Point(73, 9);
            this.lblAuthenticate.Name = "lblAuthenticate";
            this.lblAuthenticate.Size = new System.Drawing.Size(59, 13);
            this.lblAuthenticate.TabIndex = 1;
            this.lblAuthenticate.Text = "��½��֤";
            // 
            // picLogIn
            // 
            this.picLogIn.ErrorImage = null;
            this.picLogIn.Image = ((System.Drawing.Image)(resources.GetObject("picLogIn.Image")));
            this.picLogIn.InitialImage = null;
            this.picLogIn.Location = new System.Drawing.Point(14, 9);
            this.picLogIn.Name = "picLogIn";
            this.picLogIn.Size = new System.Drawing.Size(43, 35);
            this.picLogIn.TabIndex = 0;
            this.picLogIn.TabStop = false;
            // 
            // txtUserName
            // 
            this.txtUserName.Location = new System.Drawing.Point(101, 57);
            this.txtUserName.Name = "txtUserName";
            this.txtUserName.Size = new System.Drawing.Size(154, 21);
            this.txtUserName.TabIndex = 3;
            // 
            // lblUserName
            // 
            this.lblUserName.AutoSize = true;
            this.lblUserName.Location = new System.Drawing.Point(24, 60);
            this.lblUserName.Name = "lblUserName";
            this.lblUserName.Size = new System.Drawing.Size(71, 12);
            this.lblUserName.TabIndex = 2;
            this.lblUserName.Text = "�� ˾ �� ��";
            // 
            // cbxPassword
            // 
            this.cbxPassword.AutoSize = true;
            this.cbxPassword.Location = new System.Drawing.Point(26, 161);
            this.cbxPassword.Name = "cbxPassword";
            this.cbxPassword.Size = new System.Drawing.Size(72, 16);
            this.cbxPassword.TabIndex = 7;
            this.cbxPassword.Text = "��ס����";
            this.cbxPassword.UseVisualStyleBackColor = true;
            // 
            // cbxAutoLogin
            // 
            this.cbxAutoLogin.AutoSize = true;
            this.cbxAutoLogin.Location = new System.Drawing.Point(104, 161);
            this.cbxAutoLogin.Name = "cbxAutoLogin";
            this.cbxAutoLogin.Size = new System.Drawing.Size(72, 16);
            this.cbxAutoLogin.TabIndex = 8;
            this.cbxAutoLogin.Text = "�Զ���¼";
            this.cbxAutoLogin.UseVisualStyleBackColor = true;
            // 
            // linkLabel1
            // 
            this.linkLabel1.AutoSize = true;
            this.linkLabel1.Location = new System.Drawing.Point(261, 64);
            this.linkLabel1.Name = "linkLabel1";
            this.linkLabel1.Size = new System.Drawing.Size(65, 12);
            this.linkLabel1.TabIndex = 9;
            this.linkLabel1.TabStop = true;
            this.linkLabel1.Text = "ע�����ʺ�";
            // 
            // linkLabel2
            // 
            this.linkLabel2.AutoSize = true;
            this.linkLabel2.Location = new System.Drawing.Point(263, 126);
            this.linkLabel2.Name = "linkLabel2";
            this.linkLabel2.Size = new System.Drawing.Size(53, 12);
            this.linkLabel2.TabIndex = 10;
            this.linkLabel2.TabStop = true;
            this.linkLabel2.Text = "ȡ������";
            // 
            // Login
            // 
            this.AcceptButton = this.btnOK;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.CancelButton = this.btnCancel;
            this.ClientSize = new System.Drawing.Size(369, 189);
            this.ControlBox = false;
            this.Controls.Add(this.linkLabel2);
            this.Controls.Add(this.linkLabel1);
            this.Controls.Add(this.cbxAutoLogin);
            this.Controls.Add(this.cbxPassword);
            this.Controls.Add(this.lblUserName);
            this.Controls.Add(this.txtUserName);
            this.Controls.Add(this.pnlLogIn);
            this.Controls.Add(this.btnOK);
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.txtOpPassword);
            this.Controls.Add(this.lblOpPassword);
            this.Controls.Add(this.txtOpName);
            this.Controls.Add(this.lblOpName);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.Name = "Login";
            this.ShowIcon = false;
            this.ShowInTaskbar = false;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "��½";
            this.Load += new System.EventHandler(this.Login_Load);
            this.pnlLogIn.ResumeLayout(false);
            this.pnlLogIn.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.picLogIn)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblOpName;
        private System.Windows.Forms.TextBox txtOpName;
        private System.Windows.Forms.TextBox txtOpPassword;
        private System.Windows.Forms.Label lblOpPassword;
        private System.Windows.Forms.Button btnCancel;
        private System.Windows.Forms.Button btnOK;
        private System.Windows.Forms.Panel pnlLogIn;
        private System.Windows.Forms.PictureBox picLogIn;
        private System.Windows.Forms.Label lblAuthenticate;
        private System.Windows.Forms.Label lblHint;
        private System.Windows.Forms.TextBox txtUserName;
        private System.Windows.Forms.Label lblUserName;
        private System.Windows.Forms.CheckBox cbxPassword;
        private System.Windows.Forms.CheckBox cbxAutoLogin;
        private System.Windows.Forms.LinkLabel linkLabel1;
        private System.Windows.Forms.LinkLabel linkLabel2;
    }
}