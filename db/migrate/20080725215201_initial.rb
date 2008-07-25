class Initial < ActiveRecord::Migration
    def self.up
      sql = <<_HERE
      CREATE TABLE `afiliacao` (
        `id_afiliacao` int(10) NOT NULL auto_increment,
        `Nome_portugues` varchar(100) default NULL,
        `Nome_ingles` varchar(100) default NULL,
        `Nome_espanhol` varchar(100) default NULL,
        `link1` varchar(200) default NULL,
        `link2` varchar(200) default NULL,
        `Link3` varchar(200) default NULL,
        KEY `id_afiliacao` (`id_afiliacao`)
      ) TYPE=MyISAM PACK_KEYS=0 ;
      CREATE TABLE `comentarios` (
        `id_comentario` int(11) NOT NULL auto_increment,
        `id_projeto` int(20) NOT NULL default '0',
        `nome` varchar(50) NOT NULL default '',
        `nprojeto` varchar(80) NOT NULL default '',
        `Comunidade` varchar(80) NOT NULL default '',
        `email` varchar(60) default NULL,
        `location` varchar(45) default NULL,
        `comentario` longtext NOT NULL,
        `data` datetime NOT NULL default '0000-00-00 00:00:00',
        `arquivo` varchar(80) default NULL,
        `libera` char(1) NOT NULL default '0',
        PRIMARY KEY  (`id_comentario`)
      ) TYPE=MyISAM PACK_KEYS=0 AUTO_INCREMENT=138 ;
      CREATE TABLE `comments` (
        `ID_Comment` int(8) unsigned NOT NULL auto_increment,
        `Author` varchar(250) default NULL,
        `Email` varchar(50) default NULL,
        `Topic` int(11) default NULL,
        `KnowHow` varchar(250) default '0',
        `Community` varchar(250) default NULL,
        `Interests` varchar(250) default NULL,
        `Homepage` varchar(100) default NULL,
        `Comment` longtext,
        `Date_Included` datetime default NULL,
        `Acknowleged` tinyint(3) unsigned default '0',
        PRIMARY KEY  (`ID_Comment`)
      ) TYPE=MyISAM AUTO_INCREMENT=9 ;
      CREATE TABLE `continentes` (
        `ID_Country` char(3) NOT NULL default '',
        `Name_Portuguese` varchar(50) default NULL,
        `Name_English` varchar(50) default NULL,
        `Name_Spanish` varchar(50) default NULL,
        `continente` varchar(20) NOT NULL default '',
        PRIMARY KEY  (`ID_Country`)
      ) TYPE=MyISAM;
      CREATE TABLE `countries` (
        `ID_Country` char(3) NOT NULL default '',
        `Name_Portuguese` varchar(50) default NULL,
        `Name_English` varchar(50) default NULL,
        `Name_Spanish` varchar(50) default NULL,
        `continente` varchar(20) NOT NULL default '',
        PRIMARY KEY  (`ID_Country`)
      ) TYPE=MyISAM;
      CREATE TABLE `destaque` (
        `ID_Language` int(11) NOT NULL default '0',
        `dia` datetime default NULL,
        `destaque1` int(11) NOT NULL default '0',
        `destaque2` int(11) NOT NULL default '0',
        `destaque3` int(11) NOT NULL default '0',
        `proct1` int(11) NOT NULL default '0',
        `proct2` int(11) NOT NULL default '0',
        `proct3` int(11) NOT NULL default '0'
      ) TYPE=MyISAM;
      CREATE TABLE `editions` (
        `ID` int(11) NOT NULL auto_increment,
        `ID_ProjectDetail` int(11) NOT NULL default '0',
        `ID_Editor` int(11) default NULL,
        `Data_Assignment` datetime default NULL,
        `Data_Conclusion` datetime default NULL,
        PRIMARY KEY  (`ID`),
        KEY `ID` (`ID`),
        KEY `ID_Project` (`ID_ProjectDetail`)
      ) TYPE=MyISAM AUTO_INCREMENT=575 ;
      CREATE TABLE `knowhows` (
        `ID_KnowHow` tinyint(3) unsigned NOT NULL default '0',
        `Description_Portugese` char(50) default NULL,
        `Description_English` char(50) default NULL,
        `Description_Spanish` char(50) default NULL,
        PRIMARY KEY  (`ID_KnowHow`),
        KEY `ID_KnowHow` (`ID_KnowHow`)
      ) TYPE=MyISAM;
      CREATE TABLE `languages` (
        `ID_Language` int(11) NOT NULL auto_increment,
        `Name_Portuguese` char(50) default NULL,
        `Name_English` char(50) default NULL,
        `Name_Spanish` char(50) default NULL,
        PRIMARY KEY  (`ID_Language`),
        KEY `ID_Language` (`ID_Language`),
        KEY `PRIMARY_KEY` (`ID_Language`)
      ) TYPE=MyISAM AUTO_INCREMENT=4 ;
      CREATE TABLE `linkcategories` (
        `ID_LinkCategory` int(11) NOT NULL auto_increment,
        `Title_Portugese` char(50) NOT NULL default '',
        `Title_English` char(50) default NULL,
        `Title_Spanish` char(50) default NULL,
        PRIMARY KEY  (`ID_LinkCategory`),
        KEY `ID_Category` (`ID_LinkCategory`)
      ) TYPE=MyISAM AUTO_INCREMENT=26 ;
      CREATE TABLE `links` (
        `ID_Link` int(11) NOT NULL auto_increment,
        `ID_LinkType` int(11) default NULL,
        `ID_LinkCategory` int(11) default NULL,
        `ID_Status` int(11) NOT NULL default '0',
        `ID_Language` int(11) default NULL,
        `ID_Editor` int(11) default NULL,
        `Suggestor_Name` varchar(50) default NULL,
        `Suggestor_Email` varchar(50) default NULL,
        `Homepage` varchar(250) default NULL,
        `Description` longtext,
        `Date_Suggested` datetime default NULL,
        `Comment` longtext,
        `Start_Edition` datetime default NULL,
        `End_Edition` datetime default NULL,
        `Editor_Comment` longtext,
        PRIMARY KEY  (`ID_Link`),
        KEY `ID_Link` (`ID_Link`),
        KEY `ID_Status` (`ID_Status`)
      ) TYPE=MyISAM AUTO_INCREMENT=1652 ;
      CREATE TABLE `linkstatus` (
        `ID_Status` int(11) NOT NULL default '0',
        `Description_Portugese` char(50) default NULL,
        `Description_English` char(50) default NULL,
        `Description_Spanish` char(50) default NULL,
        PRIMARY KEY  (`ID_Status`),
        KEY `ID_Status` (`ID_Status`)
      ) TYPE=MyISAM;
      CREATE TABLE `linktypes` (
        `ID_LinkType` int(11) NOT NULL auto_increment,
        `Name_Portugese` char(50) default NULL,
        `Name_English` char(50) default NULL,
        `Name_Spanish` char(50) default NULL,
        PRIMARY KEY  (`ID_LinkType`),
        KEY `ID_LinkType` (`ID_LinkType`)
      ) TYPE=MyISAM AUTO_INCREMENT=4 ;
      CREATE TABLE `murals` (
        `ID_Mural` int(11) NOT NULL auto_increment,
        `ID_Language` int(11) NOT NULL default '0',
        `ID_Author` int(11) NOT NULL default '0',
        `Photo` varchar(250) default NULL,
        `Abstract` longtext,
        `Article` longtext,
        `IsLink` tinyint(3) unsigned default NULL,
        `IsPublished` tinyint(3) unsigned default NULL,
        `Link` varchar(250) default NULL,
        `Date_Inserted` datetime default NULL,
        `Date_Published` datetime default NULL,
        PRIMARY KEY  (`ID_Mural`),
        KEY `ID_Author` (`ID_Author`),
        KEY `ID_Language` (`ID_Language`),
        KEY `ID_Mural` (`ID_Mural`),
        KEY `PRIMARY_KEY` (`ID_Mural`)
      ) TYPE=MyISAM AUTO_INCREMENT=1594 ;
      CREATE TABLE `projectcategories` (
        `ID_Category` int(11) NOT NULL auto_increment,
        `Title_Portuguese` char(50) NOT NULL default '',
        `Title_English` char(50) default NULL,
        `Title_Spanish` char(50) default NULL,
        PRIMARY KEY  (`ID_Category`),
        KEY `ID_Category` (`ID_Category`)
      ) TYPE=MyISAM AUTO_INCREMENT=13 ;
      CREATE TABLE `projectcontacts` (
        `ID_Contact` int(11) NOT NULL auto_increment,
        `ID_Project` int(11) NOT NULL default '0',
        `First_Name` varchar(50) default NULL,
        `Last_Name` varchar(50) default NULL,
        `Title` varchar(100) default NULL,
        `Organization` varchar(100) default NULL,
        `Address` longtext,
        `ID_Country` char(3) NOT NULL default '',
        `Telephone` varchar(50) default NULL,
        `Fax` varchar(50) default NULL,
        `Email` varchar(50) NOT NULL default '',
        `Homepage` varchar(50) default NULL,
        `Languages_Read` longtext,
        `Languages_Written` longtext,
        `Languages_Spoken` longtext,
        `Interest_Online` tinyint(3) unsigned default NULL,
        `Interest_Face_To_Face` tinyint(3) unsigned default NULL,
        `Receive_Email_Notes` tinyint(3) unsigned default NULL,
        `ID_PreferredLanguage` int(11) NOT NULL default '0',
        PRIMARY KEY  (`ID_Contact`),
        KEY `ID_Country` (`ID_Country`),
        KEY `ID_PreferredLanguage` (`ID_PreferredLanguage`),
        KEY `ID_Project` (`ID_Project`),
        KEY `ID_User` (`ID_Contact`),
        KEY `UsersEmail` (`Email`)
      ) TYPE=MyISAM AUTO_INCREMENT=21 ;
      CREATE TABLE `projectdetails` (
        `ID_ProjectDetail` int(11) NOT NULL auto_increment,
        `ID_Project` int(11) NOT NULL default '0',
        `ID_Language` int(11) NOT NULL default '0',
        `ID_Status` int(11) NOT NULL default '0',
        `Title` varchar(100) default NULL,
        `Insert_Date` datetime default NULL,
        `Revision_Date` datetime default NULL,
        `Public_Date` datetime default NULL,
        `ID_Revisor` int(11) default NULL,
        `Version_Type` char(1) default NULL,
        `Community_Name` varchar(250) default NULL,
        `Community_Demographics` longtext,
        `City` varchar(50) default NULL,
        `ID_Country` char(3) default NULL,
        `Beginning_Date` varchar(4) default NULL,
        `Services_Offered` longtext,
        `Primary_Problems_Resolved` longtext,
        `Secondary_Problems_Resolved` longtext,
        `Beneficiaries_Number` longtext,
        `Beneficiaries_Direct` longtext,
        `Beneficiaries_Indirect` longtext,
        `Target_Population_Who` longtext,
        `Target_Population_Number` longtext,
        `Authenticity_Note` longtext,
        `Original_Objectives` longtext,
        `Results_To_Date` longtext,
        `Positive_Effects` longtext,
        `Negative_Effects` longtext,
        `Success_Factors` longtext,
        `Difficulties` longtext,
        `Project_Needs` longtext,
        `Project_Description` longtext,
        `Number_Employees` longtext,
        `Number_Hoursi` longtext,
        `Number_Volunteers` longtext,
        `Number_Hours` longtext,
        `Funding_Total` longtext,
        `Funders` longtext,
        `Donation_Value` longtext,
        `Materials` longtext,
        `Donors` longtext,
        `Loan_Total` longtext,
        `Loan_For` longtext,
        `Fees_Total` longtext,
        `Fees_For` longtext,
        `Context_Details` longtext,
        `Project_Evolution` longtext,
        `Initial_Idea_Who` longtext,
        `Preliminary_Planning_Who` longtext,
        `Implementation_Who` longtext,
        `Implementation_Funding` longtext,
        `Maintenance_Who` longtext,
        `Maintenance_Funding` longtext,
        `Maintenance_Changes` longtext,
        `Oversight_Who` longtext,
        `Advisors_Who` longtext,
        `Members_Who` longtext,
        `Members_Changes` longtext,
        `Evaluation_Who` longtext,
        `Evaluation_How` longtext,
        `Outside_Actors_Who` longtext,
        `Outside_Actors_What` longtext,
        `Inside_Actors_Who` longtext,
        `Inside_Actors_What` longtext,
        `Related_Links` longtext,
        `Pamphlets` longtext,
        `Articles` longtext,
        `Photographs` longtext,
        `Budget` longtext,
        `List_Of_Funders` longtext,
        `Evaluations` longtext,
        `Last_Author_Revision` datetime default NULL,
        `Hit_Count` int(10) unsigned default '0',
        `Perfil_Resp` longtext,
        `Inst_Apoio` longtext,
        `resumo` longtext,
        `id_afiliacao` varchar(10) default NULL,
        `afiliacao` longtext,
        `afiliacao1` longtext NOT NULL,
        `afiliacao2` longtext NOT NULL,
        `chamada` longtext,
        `release` longtext,
        `boton1s` int(1) default NULL,
        `boton1n` int(1) default NULL,
        `boton2s` int(1) default NULL,
        `boton2n` int(1) default NULL,
        `boton3s` int(1) default NULL,
        `boton3n` int(1) default NULL,
        `boton4s` int(1) default NULL,
        `boton4n` int(1) default NULL,
        `boton5s` int(1) default NULL,
        `boton5n` int(1) default NULL,
        `boton6s` int(1) default NULL,
        `boton6n` int(1) default NULL,
        `boton7n` int(1) default NULL,
        `boton7s` int(1) default NULL,
        `boton8n` int(1) default NULL,
        `boton8s` int(1) default NULL,
        `utils` int(6) NOT NULL default '0',
        `utiln` int(6) NOT NULL default '0',
        `comentarios` longtext NOT NULL,
        `percentual` int(3) NOT NULL default '0',
        `postagelivre` int(11) NOT NULL default '0',
        `ultimapag` int(2) default NULL,
        PRIMARY KEY  (`ID_ProjectDetail`),
        KEY `ID_Language` (`ID_Language`),
        KEY `ID_Project` (`ID_Project`),
        KEY `ID_ProjectDetails` (`ID_ProjectDetail`),
        KEY `ID_Status` (`ID_Status`),
        KEY `PRIMARY_KEY` (`ID_Project`,`ID_Language`)
      ) TYPE=MyISAM AUTO_INCREMENT=886 ;
      CREATE TABLE `projectmaterial` (
        `ID_Material` int(11) NOT NULL auto_increment,
        `ID_Project` int(11) NOT NULL default '0',
        `Title_Portugese` longtext,
        `Title_English` longtext,
        `Title_Spanish` longtext,
        `File_Name` varchar(250) NOT NULL default '',
        `Content_Type` varchar(50) default NULL,
        `Title_Portugese2` longtext,
        `Title_English2` longtext,
        `Title_Spanish2` longtext,
        `File_Name2` varchar(250) default NULL,
        `Title_Portugese3` longtext,
        `Title_English3` longtext,
        `Title_Spanish3` longtext,
        `File_Name3` varchar(250) default NULL,
        `Title_Portugese4` longtext,
        `Title_English4` longtext,
        `Title_Spanish4` longtext,
        `File_Name4` varchar(250) default NULL,
        PRIMARY KEY  (`ID_Material`),
        KEY `ID_Material` (`ID_Material`),
        KEY `ID_Project` (`ID_Project`),
        KEY `PRIMARY_KEY` (`ID_Project`,`File_Name`)
      ) TYPE=MyISAM AUTO_INCREMENT=2206 ;
      CREATE TABLE `projects` (
        `ID_Project` int(11) NOT NULL auto_increment,
        `ID_Author` int(11) NOT NULL default '0',
        `ID_Status` int(11) default NULL,
        `ID_SubCategory` int(11) NOT NULL default '0',
        `ID_OrgLanguage` int(11) default NULL,
        `Insert_Date` datetime default NULL,
        `ID_ProjectContact` int(11) default NULL,
        `Email_ComCat` char(50) default NULL,
        PRIMARY KEY  (`ID_Project`),
        KEY `ID_Category` (`ID_SubCategory`),
        KEY `ID_Projeto` (`ID_Project`),
        KEY `ID_User` (`ID_Author`)
      ) TYPE=MyISAM AUTO_INCREMENT=737 ;
      CREATE TABLE `projectstatus` (
        `ID_Status` int(11) NOT NULL default '0',
        `Description_Portugese` char(50) default NULL,
        `Description_English` char(50) default NULL,
        `Description_Spanish` char(50) default NULL,
        PRIMARY KEY  (`ID_Status`),
        KEY `ID_Status` (`ID_Status`)
      ) TYPE=MyISAM;
      CREATE TABLE `projectsubcategories` (
        `ID_SubCategory` int(11) NOT NULL auto_increment,
        `ID_Category` int(11) NOT NULL default '0',
        `Title_Portuguese` varchar(50) default NULL,
        `Description_Portuguese` longtext,
        `Title_English` varchar(50) default NULL,
        `Description_English` longtext,
        `Title_Spanish` varchar(50) default NULL,
        `Description_Spanish` longtext,
        PRIMARY KEY  (`ID_SubCategory`),
        KEY `ID_Category` (`ID_Category`),
        KEY `ID_SubCategory` (`ID_SubCategory`)
      ) TYPE=MyISAM AUTO_INCREMENT=89 ;
      CREATE TABLE `projectsuggestions` (
        `ID_Sugestion` int(11) NOT NULL auto_increment,
        `ID_Author` int(11) default NULL,
        `ID_Category` int(11) default NULL,
        `ID_Status` int(11) NOT NULL default '0',
        `Title` varchar(50) default NULL,
        `Abstract` longtext,
        `InsertDate` datetime default NULL,
        `RevisionDate` datetime default NULL,
        PRIMARY KEY  (`ID_Sugestion`),
        KEY `ID_Status` (`ID_Status`),
        KEY `ID_Sugestion` (`ID_Sugestion`)
      ) TYPE=MyISAM AUTO_INCREMENT=1 ;
      CREATE TABLE `publications` (
        `ID_Publication` int(11) NOT NULL auto_increment,
        `ID_Language` int(11) NOT NULL default '0',
        `Media` varchar(100) default NULL,
        `Author` varchar(100) default NULL,
        `Title` varchar(250) default NULL,
        `Body` longtext,
        `Date_Published` datetime default NULL,
        `Date_Inserted` datetime default NULL,
        `Date_Printed` datetime default NULL,
        `Visibility` tinyint(3) unsigned default NULL,
        `IsLink` tinyint(3) unsigned default NULL,
        PRIMARY KEY  (`ID_Publication`),
        KEY `ID_Language` (`ID_Language`),
        KEY `ID_Publication` (`ID_Publication`)
      ) TYPE=MyISAM PACK_KEYS=0 AUTO_INCREMENT=106 ;
      CREATE TABLE `roles` (
        `ID_Role` int(11) NOT NULL default '0',
        `Name_Portugese` char(50) default NULL,
        `Name_English` char(50) default NULL,
        `Name_Spanish` char(50) default NULL,
        PRIMARY KEY  (`ID_Role`),
        KEY `ID_Role` (`ID_Role`)
      ) TYPE=MyISAM;
      CREATE TABLE `sponsors` (
        `ID_Sponsor` int(11) NOT NULL auto_increment,
        `SponsorName` varchar(100) default NULL,
        `Address` longtext,
        `Allow_Publicity` tinyint(3) unsigned default NULL,
        `Individual` tinyint(3) unsigned default NULL,
        `HowHeardAbout` longtext,
        `Email` varchar(50) default NULL,
        `Comment` longtext,
        `Admin_Comment` longtext,
        `Date_Included` datetime default NULL,
        `Donation` decimal(20,4) default NULL,
        `Currency_Unit` varchar(4) default NULL,
        `Date_Donation` datetime default NULL,
        `Boleto_Sent` tinyint(3) unsigned default NULL,
        `Boleto_Date` datetime default NULL,
        `ID_PreferredLanguage` int(11) default NULL,
        `tipoparceria` text,
        `valor` int(10) default NULL,
        `formapg` varchar(20) default NULL,
        `outrovalor` int(11) default NULL,
        PRIMARY KEY  (`ID_Sponsor`),
        UNIQUE KEY `ID_Sponsor_3` (`ID_Sponsor`),
        KEY `ID_Donation` (`ID_Sponsor`),
        KEY `ID_Sponsor` (`ID_Sponsor`),
        KEY `ID_Sponsor_2` (`ID_Sponsor`)
      ) TYPE=MyISAM AUTO_INCREMENT=84 ;
      CREATE TABLE `suggestions` (
        `ID_Suggestion` int(11) NOT NULL auto_increment,
        `ID_SuggestionType` int(11) default NULL,
        `ID_SubCategory` int(11) default NULL,
        `ID_Status` int(11) default NULL,
        `ID_Language` int(11) NOT NULL default '0',
        `Suggestor_Name` varchar(50) default NULL,
        `Email` varchar(50) default NULL,
        `Date_Suggested` datetime default NULL,
        `Title` varchar(100) default NULL,
        `Suggestion` longtext,
        `Final_Version` longtext,
        `ID_Editor` int(11) default NULL,
        `Start_Edition` datetime default NULL,
        `End_Edition` datetime default NULL,
        `ID_Translator` int(11) default NULL,
        `Start_Translation` datetime default NULL,
        `End_Translation` datetime default NULL,
        `ID_OrgSuggestion` int(11) default NULL,
        `Link` varchar(250) default NULL,
        `Author` varchar(50) default NULL,
        `Author_Password` varchar(10) default NULL,
        `ID_Evaluator` int(11) default NULL,
        `Start_Evaluation` datetime default NULL,
        `End_Evaluation` datetime default NULL,
        `Evaluator_Comment` longtext,
        `Date_Published` datetime default NULL,
        PRIMARY KEY  (`ID_Suggestion`),
        KEY `ID_Language` (`ID_Language`),
        KEY `ID_Suggestion` (`ID_Suggestion`)
      ) TYPE=MyISAM AUTO_INCREMENT=85 ;
      CREATE TABLE `suggestionstatus` (
        `ID_Status` int(11) NOT NULL default '0',
        `Description_Portugese` char(50) default NULL,
        `Description_English` char(50) default NULL,
        `Description_Spanish` char(50) default NULL,
        PRIMARY KEY  (`ID_Status`),
        KEY `ID_Status` (`ID_Status`)
      ) TYPE=MyISAM;
      CREATE TABLE `suggestiontypes` (
        `ID_SuggestionType` int(11) NOT NULL default '0',
        `Description` char(50) NOT NULL default '',
        PRIMARY KEY  (`ID_SuggestionType`),
        KEY `Description` (`Description`),
        KEY `ID_SuggestionType` (`ID_SuggestionType`)
      ) TYPE=MyISAM;
      CREATE TABLE `translationrequests` (
        `ID_Request` int(8) unsigned NOT NULL auto_increment,
        `ID_ProjectDetail` int(8) unsigned default NULL,
        `Languages` varchar(250) default NULL,
        `Problem` varchar(250) default NULL,
        `Author` varchar(250) default NULL,
        `KnowHow` varchar(250) default NULL,
        `Community` varchar(250) default NULL,
        `Organization` varchar(250) default NULL,
        `Address` varchar(250) default NULL,
        `Email` varchar(50) default NULL,
        `Phone` varchar(50) default NULL,
        `Fax` varchar(50) default NULL,
        `Homepage` varchar(100) default NULL,
        `Comment` longtext,
        `Date_Included` datetime default NULL,
        `Acknowleged` tinyint(3) unsigned default '0',
        PRIMARY KEY  (`ID_Request`)
      ) TYPE=MyISAM AUTO_INCREMENT=12 ;
      CREATE TABLE `translations` (
        `ID` int(11) NOT NULL auto_increment,
        `ID_Project` int(11) NOT NULL default '0',
        `ID_OrgLanguage` int(11) default NULL,
        `ID_DestLanguage` int(11) default NULL,
        `ID_Translator` int(11) NOT NULL default '0',
        `Data_Assignment` datetime default NULL,
        `Data_Conclusion` datetime default NULL,
        PRIMARY KEY  (`ID`),
        KEY `ID` (`ID`),
        KEY `ID_Project` (`ID_Project`),
        KEY `ID_Translator` (`ID_Translator`)
      ) TYPE=MyISAM AUTO_INCREMENT=490 ;
      CREATE TABLE `useractivities` (
        `ID_Activity` int(11) NOT NULL auto_increment,
        `ID_User` int(11) NOT NULL default '0',
        `ID_Actor` int(11) NOT NULL default '0',
        `Activity_Date` datetime default NULL,
        `Activity` longtext,
        PRIMARY KEY  (`ID_Activity`),
        KEY `ID_Activator` (`ID_Actor`),
        KEY `ID_Activity` (`ID_Activity`),
        KEY `ID_User` (`ID_User`),
        KEY `PRIMARY_KEY` (`ID_Activity`)
      ) TYPE=MyISAM AUTO_INCREMENT=4 ;
      CREATE TABLE `usercategories` (
        `ID_UserCategory` int(11) NOT NULL default '0',
        `Description_Portugese` char(50) default NULL,
        `Description_English` char(50) default NULL,
        `Description_Spanish` char(50) default NULL,
        `Volunteer_Target` tinyint(3) unsigned default NULL,
        `Change_Possible` tinyint(3) unsigned default NULL,
        `Is_Volunteer` tinyint(3) default NULL,
        PRIMARY KEY  (`ID_UserCategory`),
        KEY `ID_UserType` (`ID_UserCategory`)
      ) TYPE=MyISAM;
      CREATE TABLE `users` (
        `ID_User` int(11) NOT NULL auto_increment,
        `ID_UserCategory` int(11) NOT NULL default '0',
        `ID_PreferredLanguage` int(11) NOT NULL default '0',
        `ID_Country` char(3) default NULL,
        `First_Name` varchar(50) default NULL,
        `Last_Name` varchar(50) default NULL,
        `sexo` int(1) default NULL,
        `Account` varchar(50) default NULL,
        `Passwrd` varchar(50) default NULL,
        `Title` varchar(100) default NULL,
        `Organization` varchar(100) default NULL,
        `Address` longtext,
        `Telephone` varchar(50) default NULL,
        `Fax` varchar(50) default NULL,
        `Email` varchar(50) NOT NULL default '',
        `Homepage` varchar(50) default NULL,
        `Languages_Read` varchar(50) default NULL,
        `Languages_Written` varchar(50) default NULL,
        `Languages_Spoken` varchar(50) default NULL,
        `Interest_Online` tinyint(3) unsigned default NULL,
        `Interest_Face_To_Face` tinyint(3) unsigned default NULL,
        `Receive_Email_Notes` tinyint(3) unsigned default NULL,
        `Register_Date` datetime default NULL,
        `Available` tinyint(3) unsigned default NULL,
        `Available_Since` datetime default NULL,
        `Admin_Comment` longtext,
        `perfil` longtext,
        `Roles` varchar(100) default NULL,
        PRIMARY KEY  (`ID_User`),
        KEY `ID_PreferredLanguage` (`ID_PreferredLanguage`),
        KEY `ID_User` (`ID_User`),
        KEY `ID_UserType` (`ID_UserCategory`),
        KEY `UsersEmail` (`Email`),
        KEY `ID_User_2` (`ID_User`)
      ) TYPE=MyISAM AUTO_INCREMENT=2695 ;
      CREATE TABLE `volunteers` (
        `ID_Volunteer` int(11) NOT NULL default '0',
        `Other_Text` longtext,
        `Areas_Of_Interest` longtext,
        `Cities_Of_Interest` longtext,
        `Skills_Description` longtext,
        `Time_Available` varchar(50) default NULL,
        `KnowHow` longtext,
        `ID_Opportunity` tinyint(3) default NULL,
        PRIMARY KEY  (`ID_Volunteer`),
        KEY `ID_User` (`ID_Volunteer`)
      ) TYPE=MyISAM; 
_HERE
      sql.split(';').each do |stmt|
        execute(stmt) if (stmt.strip! && stmt.length>0)
      end

    end

    def self.down
    end
  end


