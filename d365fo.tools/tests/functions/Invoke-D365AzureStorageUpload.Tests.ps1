﻿Describe "Invoke-D365AzureStorageUpload Unit Tests" -Tag "Unit" {
	BeforeAll {
		# Place here all things needed to prepare for the tests
	}
	AfterAll {
		# Here is where all the cleanup tasks go
	}
	
	Describe "Ensuring unchanged command signature" {
		It "should have the expected parameter sets" {
			(Get-Command Invoke-D365AzureStorageUpload).ParameterSets.Name | Should -Be 'Default', 'Pipeline'
		}
		
		It 'Should have the expected parameter AccountId' {
			$parameter = (Get-Command Invoke-D365AzureStorageUpload).Parameters['AccountId']
			$parameter.Name | Should -Be 'AccountId'
			$parameter.ParameterType.ToString() | Should -Be System.String
			$parameter.IsDynamic | Should -Be $False
			$parameter.ParameterSets.Keys | Should -Be '__AllParameterSets'
			$parameter.ParameterSets.Keys | Should -Contain '__AllParameterSets'
			$parameter.ParameterSets['__AllParameterSets'].IsMandatory | Should -Be $False
			$parameter.ParameterSets['__AllParameterSets'].Position | Should -Be 1
			$parameter.ParameterSets['__AllParameterSets'].ValueFromPipeline | Should -Be $False
			$parameter.ParameterSets['__AllParameterSets'].ValueFromPipelineByPropertyName | Should -Be $False
			$parameter.ParameterSets['__AllParameterSets'].ValueFromRemainingArguments | Should -Be $False
		}
		It 'Should have the expected parameter AccessToken' {
			$parameter = (Get-Command Invoke-D365AzureStorageUpload).Parameters['AccessToken']
			$parameter.Name | Should -Be 'AccessToken'
			$parameter.ParameterType.ToString() | Should -Be System.String
			$parameter.IsDynamic | Should -Be $False
			$parameter.ParameterSets.Keys | Should -Be '__AllParameterSets'
			$parameter.ParameterSets.Keys | Should -Contain '__AllParameterSets'
			$parameter.ParameterSets['__AllParameterSets'].IsMandatory | Should -Be $False
			$parameter.ParameterSets['__AllParameterSets'].Position | Should -Be 2
			$parameter.ParameterSets['__AllParameterSets'].ValueFromPipeline | Should -Be $False
			$parameter.ParameterSets['__AllParameterSets'].ValueFromPipelineByPropertyName | Should -Be $False
			$parameter.ParameterSets['__AllParameterSets'].ValueFromRemainingArguments | Should -Be $False
		}
		It 'Should have the expected parameter Blobname' {
			$parameter = (Get-Command Invoke-D365AzureStorageUpload).Parameters['Blobname']
			$parameter.Name | Should -Be 'Blobname'
			$parameter.ParameterType.ToString() | Should -Be System.String
			$parameter.IsDynamic | Should -Be $False
			$parameter.ParameterSets.Keys | Should -Be '__AllParameterSets'
			$parameter.ParameterSets.Keys | Should -Contain '__AllParameterSets'
			$parameter.ParameterSets['__AllParameterSets'].IsMandatory | Should -Be $False
			$parameter.ParameterSets['__AllParameterSets'].Position | Should -Be 3
			$parameter.ParameterSets['__AllParameterSets'].ValueFromPipeline | Should -Be $False
			$parameter.ParameterSets['__AllParameterSets'].ValueFromPipelineByPropertyName | Should -Be $False
			$parameter.ParameterSets['__AllParameterSets'].ValueFromRemainingArguments | Should -Be $False
		}
		It 'Should have the expected parameter Filepath' {
			$parameter = (Get-Command Invoke-D365AzureStorageUpload).Parameters['Filepath']
			$parameter.Name | Should -Be 'Filepath'
			$parameter.ParameterType.ToString() | Should -Be System.String
			$parameter.IsDynamic | Should -Be $False
			$parameter.ParameterSets.Keys | Should -Be 'Pipeline', 'Default'
			$parameter.ParameterSets.Keys | Should -Contain 'Pipeline'
			$parameter.ParameterSets['Pipeline'].IsMandatory | Should -Be $True
			$parameter.ParameterSets['Pipeline'].Position | Should -Be 4
			$parameter.ParameterSets['Pipeline'].ValueFromPipeline | Should -Be $False
			$parameter.ParameterSets['Pipeline'].ValueFromPipelineByPropertyName | Should -Be $True
			$parameter.ParameterSets['Pipeline'].ValueFromRemainingArguments | Should -Be $False
			$parameter.ParameterSets.Keys | Should -Contain 'Default'
			$parameter.ParameterSets['Default'].IsMandatory | Should -Be $True
			$parameter.ParameterSets['Default'].Position | Should -Be 4
			$parameter.ParameterSets['Default'].ValueFromPipeline | Should -Be $True
			$parameter.ParameterSets['Default'].ValueFromPipelineByPropertyName | Should -Be $False
			$parameter.ParameterSets['Default'].ValueFromRemainingArguments | Should -Be $False
		}
		It 'Should have the expected parameter DeleteOnUpload' {
			$parameter = (Get-Command Invoke-D365AzureStorageUpload).Parameters['DeleteOnUpload']
			$parameter.Name | Should -Be 'DeleteOnUpload'
			$parameter.ParameterType.ToString() | Should -Be System.Management.Automation.SwitchParameter
			$parameter.IsDynamic | Should -Be $False
			$parameter.ParameterSets.Keys | Should -Be '__AllParameterSets'
			$parameter.ParameterSets.Keys | Should -Contain '__AllParameterSets'
			$parameter.ParameterSets['__AllParameterSets'].IsMandatory | Should -Be $False
			$parameter.ParameterSets['__AllParameterSets'].Position | Should -Be -2147483648
			$parameter.ParameterSets['__AllParameterSets'].ValueFromPipeline | Should -Be $False
			$parameter.ParameterSets['__AllParameterSets'].ValueFromPipelineByPropertyName | Should -Be $False
			$parameter.ParameterSets['__AllParameterSets'].ValueFromRemainingArguments | Should -Be $False
		}
	}
	
	Describe "Testing parameterset Default" {
		<#
		Default -Filepath
		Default -AccountId -AccessToken -Blobname -Filepath -DeleteOnUpload
		#>
	}
 	Describe "Testing parameterset Pipeline" {
		<#
		Pipeline -Filepath
		Pipeline -AccountId -AccessToken -Blobname -Filepath -DeleteOnUpload
		#>
	}

}