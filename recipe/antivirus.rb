control "Check antivirus software" do
  title "Check antivirus software is installed"

  if os.family == 'redhat'
    describe file('/opt/Symantec/symantec_antivirus/sav') do
      its('type') { should eq :file }
    end
  end
end