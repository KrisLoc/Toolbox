Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing


$Form = New-Object Windows.Forms.Form
$Form.Text = "ToolBox"
$Form.Height = "300"
$Form.Width = "400"

$label1 = New-Object System.Windows.Forms.Label
$label1.Location = New-Object System.Drawing.Point(150,20)
$label1.Size = New-Object System.Drawing.Size(280,20)
$label1.Text = "Kristo's toolbox"
$form.Controls.Add($label1)

$Buttona = New-Object System.Windows.Forms.Button
$Buttona.Location = New-Object System.Drawing.Point(150,60)
$Buttona.Size = New-Object System.Drawing.Size(75,23)
$Buttona.Text = 'Version'
$Buttona.Add_Click($Button_Click1)
$Button_Click1 = {winver}
$form.Controls.Add($Buttona)

$Buttonb = New-Object System.Windows.Forms.Button
$Buttonb.Location = New-Object System.Drawing.Point(140,100)
$Buttonb.Size = New-Object System.Drawing.Size(95,23)
$Buttonb.Text = 'SysAntributes'
$Buttonb.Add_Click($Button_Click2)
$Button_Click2 = {sysdm.cpl}
$form.Controls.Add($Buttonb)


$Buttonc = New-Object System.Windows.Forms.Button
$Buttonc.Location = New-Object System.Drawing.Point(150,140)
$Buttonc.Size = New-Object System.Drawing.Size(75,23)
$Buttonc.Text = 'Mouse'
$Buttonc.Add_Click($Button_Click3)
$Button_Click3 = {main.cpl}

$form.Controls.Add($Buttonc)

$Buttond = New-Object System.Windows.Forms.Button
$Buttond.Location = New-Object System.Drawing.Point(150,180)
$Buttond.Size = New-Object System.Drawing.Size(75,23)
$Buttond.Text = 'Disk'
$Buttond.Add_Click($Button_Click4)
$Button_Click4 = {diskmgmt.msc}

$form.Controls.Add($Buttond)

$Buttone = New-Object System.Windows.Forms.Button
$Buttone.Location = New-Object System.Drawing.Point(150,220)
$Buttone.Size = New-Object System.Drawing.Size(75,23)
$Buttone.Text = 'Verifier'
$Buttone.Add_Click($Button_Click5)
$Button_Click5 = {verifier.exe}

$form.Controls.Add($Buttone)

$Form.Add_Shown({$Form.Activate()})
$Form.ShowDialog()  