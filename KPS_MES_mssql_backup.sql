USE [KPS_MES]
GO
/****** Object:  Table [dbo].[activity_logs]    Script Date: 2021-04-24 10:00:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[activity_logs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[model] [varchar](30) NULL,
	[object_id] [int] NULL,
	[project_id] [int] NULL,
	[action] [varchar](50) NULL,
	[raw_data] [text] NULL,
	[created_at] [datetime] NOT NULL,
	[created_by_id] [int] NULL,
	[is_private] [tinyint] NOT NULL,
	[is_hidden] [tinyint] NOT NULL,
	[target_source_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[announcements]    Script Date: 2021-04-24 10:00:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[announcements](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](100) NOT NULL,
	[description] [text] NOT NULL,
	[start_date] [date] NOT NULL,
	[end_date] [date] NOT NULL,
	[share_with] [varchar](100) NOT NULL,
	[created_by_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[target_source_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aquila_table_version]    Script Date: 2021-04-24 10:00:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aquila_table_version](
	[table_id] [int] NOT NULL,
	[name] [varchar](255) NOT NULL,
	[version] [varchar](20) NOT NULL,
 CONSTRAINT [pk_aquila_table_version] PRIMARY KEY CLUSTERED 
(
	[table_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aquila_time_zone]    Script Date: 2021-04-24 10:00:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aquila_time_zone](
	[ZoneID] [int] NOT NULL,
	[Bias] [int] NOT NULL,
	[Standard_Name] [varchar](255) NOT NULL,
	[Standard_Bias] [int] NOT NULL,
	[Standard_Year] [int] NOT NULL,
	[Standard_Month] [int] NOT NULL,
	[Standard_WeekDay] [int] NOT NULL,
	[Standard_Day] [int] NOT NULL,
	[Standard_Hour] [int] NOT NULL,
	[Standard_Min] [int] NOT NULL,
	[Standard_Sec] [int] NOT NULL,
	[Standard_MilliSec] [int] NOT NULL,
	[DayLight_Name] [varchar](255) NOT NULL,
	[DayLight_Bias] [int] NOT NULL,
	[DayLight_Year] [int] NOT NULL,
	[DayLight_Month] [int] NOT NULL,
	[DayLight_DayWeek] [int] NOT NULL,
	[DayLight_Day] [int] NOT NULL,
	[DayLight_Hour] [int] NOT NULL,
	[DayLight_Min] [int] NOT NULL,
	[DayLight_Sec] [int] NOT NULL,
	[DayLight_MilliSec] [int] NOT NULL,
 CONSTRAINT [pk_aquila_time_zone] PRIMARY KEY CLUSTERED 
(
	[ZoneID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[companies]    Script Date: 2021-04-24 10:00:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[companies](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[parent_id] [int] NULL,
	[name] [varchar](50) NULL,
	[address] [varchar](200) NULL,
	[vat_no] [varchar](100) NULL,
	[phone_number] [varchar](30) NULL,
	[logo_file] [varchar](44) NULL,
	[created_at] [datetime] NOT NULL,
	[created_by_id] [int] NULL,
	[updated_at] [datetime] NOT NULL,
	[is_active] [tinyint] NOT NULL,
	[is_trashed] [tinyint] NOT NULL,
	[trashed_by_id] [int] NOT NULL,
	[target_source_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[configurations]    Script Date: 2021-04-24 10:00:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[configurations](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [varchar](30) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[value] [text] NULL,
	[target_source_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estimate_items]    Script Date: 2021-04-24 10:00:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estimate_items](
	[u_key] [varchar](40) NOT NULL,
	[o_key] [int] NOT NULL,
	[estimate_id] [int] NOT NULL,
	[quantity] [decimal](10, 2) NOT NULL,
	[amount] [decimal](10, 2) NOT NULL,
	[description] [varchar](255) NOT NULL,
	[target_source_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estimates]    Script Date: 2021-04-24 10:00:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estimates](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[estimate_no] [varchar](100) NOT NULL,
	[client_id] [int] NOT NULL,
	[project_id] [int] NOT NULL,
	[company_id] [int] NOT NULL,
	[company_name] [varchar](255) NULL,
	[company_address] [text] NULL,
	[status] [tinyint] NOT NULL,
	[subject] [varchar](255) NOT NULL,
	[due_date] [datetime] NOT NULL,
	[tax] [varchar](255) NOT NULL,
	[tax_rate] [decimal](10, 2) NOT NULL,
	[tax2] [varchar](255) NOT NULL,
	[tax_rate2] [decimal](10, 2) NOT NULL,
	[discount_amount] [decimal](10, 2) NOT NULL,
	[discount_amount_type] [varchar](100) NOT NULL,
	[note] [text] NULL,
	[private_note] [text] NULL,
	[total_amount] [decimal](10, 2) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[created_by_id] [int] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[access_key] [varchar](40) NOT NULL,
	[is_online_payment_disabled] [tinyint] NOT NULL,
	[is_trashed] [tinyint] NOT NULL,
	[trashed_by_id] [int] NOT NULL,
	[target_source_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[event_users]    Script Date: 2021-04-24 10:00:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[event_users](
	[event_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[target_source_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[events]    Script Date: 2021-04-24 10:00:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[events](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](255) NULL,
	[description] [text] NULL,
	[start] [datetime] NULL,
	[end] [datetime] NULL,
	[classname] [varchar](100) NULL,
	[created_at] [datetime] NOT NULL,
	[created_by_id] [int] NULL,
	[target_source_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[global_labels]    Script Date: 2021-04-24 10:00:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[global_labels](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [varchar](50) NOT NULL,
	[name] [varchar](100) NULL,
	[bg_color_hex] [varchar](6) NOT NULL,
	[is_default] [tinyint] NOT NULL,
	[is_active] [tinyint] NOT NULL,
	[target_source_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[iconfigurations]    Script Date: 2021-04-24 10:00:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iconfigurations](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [varchar](30) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[value] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[invoice_item_project_timelogs]    Script Date: 2021-04-24 10:00:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[invoice_item_project_timelogs](
	[invoice_u_key] [varchar](40) NOT NULL,
	[project_timelog_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[invoice_u_key] ASC,
	[project_timelog_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[invoice_items]    Script Date: 2021-04-24 10:00:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[invoice_items](
	[u_key] [varchar](40) NOT NULL,
	[o_key] [int] NOT NULL,
	[invoice_id] [int] NOT NULL,
	[quantity] [decimal](10, 2) NOT NULL,
	[amount] [decimal](10, 2) NOT NULL,
	[description] [varchar](255) NOT NULL,
	[project_timelog_id] [int] NOT NULL,
	[target_source_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[invoices]    Script Date: 2021-04-24 10:00:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[invoices](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[invoice_no] [varchar](100) NOT NULL,
	[reference] [varchar](100) NULL,
	[client_id] [int] NOT NULL,
	[project_id] [int] NOT NULL,
	[company_id] [int] NOT NULL,
	[company_name] [varchar](255) NULL,
	[company_address] [text] NULL,
	[status] [tinyint] NOT NULL,
	[subject] [varchar](255) NOT NULL,
	[due_after_days] [int] NOT NULL,
	[issue_date] [date] NOT NULL,
	[due_date] [date] NOT NULL,
	[tax] [varchar](255) NOT NULL,
	[tax_rate] [decimal](10, 2) NOT NULL,
	[tax2] [varchar](255) NOT NULL,
	[tax_rate2] [decimal](10, 2) NOT NULL,
	[discount_amount] [decimal](10, 2) NOT NULL,
	[discount_amount_type] [varchar](100) NOT NULL,
	[note] [text] NULL,
	[private_note] [text] NULL,
	[is_recurring] [tinyint] NOT NULL,
	[recurring_start_date] [date] NOT NULL,
	[recurring_invoice_id] [int] NOT NULL,
	[recurring_value] [int] NOT NULL,
	[recurring_type] [varchar](100) NULL,
	[no_of_cycles] [int] NULL,
	[no_of_cycles_completed] [int] NOT NULL,
	[due_reminder_date] [date] NOT NULL,
	[recurring_reminder_date] [date] NOT NULL,
	[next_recurring_date] [date] NOT NULL,
	[discount] [decimal](10, 2) NOT NULL,
	[total_amount] [decimal](10, 2) NOT NULL,
	[paid_amount] [decimal](10, 2) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[created_by_id] [int] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[access_key] [varchar](40) NOT NULL,
	[is_online_payment_disabled] [tinyint] NOT NULL,
	[is_cancelled] [tinyint] NOT NULL,
	[is_trashed] [tinyint] NOT NULL,
	[trashed_by_id] [int] NOT NULL,
	[target_source_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ipackages]    Script Date: 2021-04-24 10:00:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ipackages](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[price_per_month] [int] NOT NULL,
	[max_storage] [int] NOT NULL,
	[max_users] [int] NOT NULL,
	[max_projects] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ipayment_orders]    Script Date: 2021-04-24 10:00:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ipayment_orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[payment_method] [varchar](50) NOT NULL,
	[is_verified] [tinyint] NOT NULL,
	[payer_name] [varchar](100) NOT NULL,
	[payer_email] [varchar](100) NOT NULL,
	[payment_status] [varchar](100) NOT NULL,
	[receiver_email] [varchar](100) NOT NULL,
	[send_amount] [decimal](10, 2) NOT NULL,
	[payment_fee] [decimal](10, 2) NOT NULL,
	[tax] [decimal](10, 2) NOT NULL,
	[txn_id] [varchar](255) NOT NULL,
	[currency] [varchar](100) NOT NULL,
	[raw_data] [text] NOT NULL,
	[order_message] [varchar](255) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[created_by_id] [int] NOT NULL,
	[target_source_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ipn_logs]    Script Date: 2021-04-24 10:00:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ipn_logs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[data] [text] NOT NULL,
	[ip] [varchar](100) NOT NULL,
	[is_payment_processed] [tinyint] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[target_source_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[iusers]    Script Date: 2021-04-24 10:00:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iusers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](30) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[token] [varchar](40) NOT NULL,
	[salt] [varchar](13) NOT NULL,
	[address] [varchar](200) NULL,
	[phone_number] [varchar](30) NULL,
	[created_at] [datetime] NOT NULL,
	[created_by_id] [int] NULL,
	[updated_at] [datetime] NOT NULL,
	[last_login] [datetime] NOT NULL,
	[last_visit] [datetime] NOT NULL,
	[last_activity] [datetime] NOT NULL,
	[is_active] [tinyint] NOT NULL,
	[is_super] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[iwidgets]    Script Date: 2021-04-24 10:00:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iwidgets](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [text] NULL,
	[description] [text] NULL,
	[photo] [varchar](255) NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lead_form_element_values]    Script Date: 2021-04-24 10:00:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lead_form_element_values](
	[element_id] [int] NOT NULL,
	[lead_id] [int] NOT NULL,
	[form_id] [int] NOT NULL,
	[element_value] [text] NOT NULL,
	[target_source_id] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lead_form_elements]    Script Date: 2021-04-24 10:00:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lead_form_elements](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[field_name] [varchar](100) NOT NULL,
	[field_category] [int] NOT NULL,
	[field_data] [text] NOT NULL,
	[is_required] [tinyint] NOT NULL,
	[help_text] [text] NOT NULL,
	[form_id] [int] NOT NULL,
	[target_source_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lead_forms]    Script Date: 2021-04-24 10:00:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lead_forms](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](100) NOT NULL,
	[description] [text] NOT NULL,
	[assigned_id] [int] NOT NULL,
	[default_status_id] [int] NOT NULL,
	[default_source_id] [int] NOT NULL,
	[is_collect_userinfo] [tinyint] NOT NULL,
	[access_key] [varchar](40) NOT NULL,
	[created_by_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[target_source_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[leads]    Script Date: 2021-04-24 10:00:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[leads](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](30) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[address] [varchar](200) NOT NULL,
	[city] [varchar](100) NOT NULL,
	[state] [varchar](50) NOT NULL,
	[postcode] [varchar](15) NOT NULL,
	[country] [varchar](100) NOT NULL,
	[phone_number] [varchar](50) NOT NULL,
	[notes] [text] NOT NULL,
	[project_id] [int] NOT NULL,
	[client_id] [int] NOT NULL,
	[assigned_id] [int] NOT NULL,
	[status_id] [int] NOT NULL,
	[source_id] [int] NOT NULL,
	[form_id] [int] NOT NULL,
	[is_import_lead] [tinyint] NOT NULL,
	[ip_address] [varchar](30) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[target_source_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[leads_sources]    Script Date: 2021-04-24 10:00:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[leads_sources](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[target_source_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[leads_statuses]    Script Date: 2021-04-24 10:00:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[leads_statuses](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[target_source_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[project_comments]    Script Date: 2021-04-24 10:00:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project_comments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[text] [text] NULL,
	[project_id] [int] NULL,
	[parent_type] [varchar](30) NULL,
	[parent_id] [int] NOT NULL,
	[is_private] [tinyint] NOT NULL,
	[is_trashed] [tinyint] NOT NULL,
	[trashed_by_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[created_by_id] [int] NULL,
	[updated_at] [datetime] NOT NULL,
	[target_source_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[project_companies]    Script Date: 2021-04-24 10:00:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project_companies](
	[project_id] [int] NOT NULL,
	[company_id] [int] NOT NULL,
	[target_source_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[project_discussions]    Script Date: 2021-04-24 10:00:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project_discussions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[project_id] [int] NULL,
	[title] [varchar](100) NULL,
	[text] [text] NULL,
	[is_private] [tinyint] NOT NULL,
	[is_sticky] [tinyint] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[created_by_id] [int] NULL,
	[updated_at] [datetime] NOT NULL,
	[is_trashed] [tinyint] NOT NULL,
	[trashed_by_id] [int] NOT NULL,
	[target_source_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[project_files]    Script Date: 2021-04-24 10:00:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project_files](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[access_key] [varchar](40) NOT NULL,
	[project_id] [int] NULL,
	[parent_type] [varchar](30) NULL,
	[parent_id] [int] NOT NULL,
	[is_private] [tinyint] NOT NULL,
	[can_download] [tinyint] NOT NULL,
	[file_name] [varchar](100) NOT NULL,
	[file_repository_id] [varchar](40) NOT NULL,
	[file_extension] [varchar](10) NOT NULL,
	[file_type_string] [varchar](50) NOT NULL,
	[file_size] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[created_by_id] [int] NOT NULL,
	[is_trashed] [tinyint] NOT NULL,
	[trashed_by_id] [int] NOT NULL,
	[target_source_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[project_notes]    Script Date: 2021-04-24 10:00:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project_notes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](100) NOT NULL,
	[description] [text] NULL,
	[project_id] [int] NOT NULL,
	[created_by] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[target_source_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[project_task_lists]    Script Date: 2021-04-24 10:00:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project_task_lists](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[project_id] [int] NULL,
	[name] [varchar](100) NULL,
	[description] [text] NULL,
	[is_private] [tinyint] NOT NULL,
	[is_high_priority] [tinyint] NOT NULL,
	[sort_order] [int] NOT NULL,
	[start_date] [date] NULL,
	[due_date] [date] NULL,
	[created_at] [datetime] NULL,
	[created_by_id] [int] NOT NULL,
	[updated_at] [datetime] NULL,
	[is_trashed] [tinyint] NOT NULL,
	[trashed_by_id] [int] NOT NULL,
	[target_source_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[project_tasks]    Script Date: 2021-04-24 10:00:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project_tasks](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[description] [text] NULL,
	[project_id] [int] NULL,
	[task_list_id] [int] NULL,
	[assignee_id] [int] NULL,
	[label_id] [int] NOT NULL,
	[start_date] [date] NOT NULL,
	[due_date] [date] NOT NULL,
	[is_high_priority] [tinyint] NOT NULL,
	[sort_order] [int] NOT NULL,
	[completed_at] [datetime] NOT NULL,
	[completed_by_id] [int] NULL,
	[created_at] [datetime] NOT NULL,
	[created_by_id] [int] NULL,
	[updated_at] [datetime] NOT NULL,
	[is_trashed] [tinyint] NOT NULL,
	[trashed_by_id] [int] NOT NULL,
	[target_source_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[project_timelogs]    Script Date: 2021-04-24 10:00:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project_timelogs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[memo] [varchar](100) NOT NULL,
	[project_id] [int] NOT NULL,
	[task_id] [int] NOT NULL,
	[member_id] [int] NOT NULL,
	[start_time] [datetime] NOT NULL,
	[end_time] [datetime] NOT NULL,
	[total_hours] [decimal](10, 2) NOT NULL,
	[hourly_rate] [decimal](10, 2) NOT NULL,
	[is_approved] [tinyint] NOT NULL,
	[is_timer] [tinyint] NOT NULL,
	[is_timer_started] [tinyint] NOT NULL,
	[is_billable] [tinyint] NOT NULL,
	[created_by_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[is_trashed] [tinyint] NOT NULL,
	[trashed_by_id] [int] NOT NULL,
	[target_source_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[project_users]    Script Date: 2021-04-24 10:00:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project_users](
	[project_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[target_source_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[projects]    Script Date: 2021-04-24 10:00:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[projects](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NULL,
	[company_id] [int] NOT NULL,
	[label_id] [int] NULL,
	[description] [text] NULL,
	[is_featured] [tinyint] NOT NULL,
	[is_enable_timelog] [tinyint] NOT NULL,
	[is_timelog_visible] [tinyint] NOT NULL,
	[start_date] [date] NOT NULL,
	[due_date] [date] NOT NULL,
	[completed_at] [datetime] NOT NULL,
	[completed_by_id] [int] NULL,
	[created_at] [datetime] NOT NULL,
	[created_by_id] [int] NULL,
	[updated_at] [datetime] NOT NULL,
	[is_trashed] [tinyint] NOT NULL,
	[target_source_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[searchable_objects]    Script Date: 2021-04-24 10:00:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[searchable_objects](
	[model] [varchar](50) NOT NULL,
	[object_id] [int] NOT NULL,
	[field_name] [varchar](50) NOT NULL,
	[field_content] [text] NOT NULL,
	[project_id] [int] NOT NULL,
	[is_private] [tinyint] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[target_source_id] [int] NOT NULL,
 CONSTRAINT [PK_searchable_objects] PRIMARY KEY CLUSTERED 
(
	[model] ASC,
	[object_id] ASC,
	[field_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subscriptions]    Script Date: 2021-04-24 10:00:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subscriptions](
	[parent_type] [varchar](50) NOT NULL,
	[parent_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[code] [varchar](44) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[target_source_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[target_sources]    Script Date: 2021-04-24 10:00:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[target_sources](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[subscription_id] [int] NOT NULL,
	[created_by_id] [int] NOT NULL,
	[is_active] [tinyint] NOT NULL,
	[expire_date] [date] NOT NULL,
	[storage_used] [int] NOT NULL,
	[storage_limit] [decimal](10, 2) NOT NULL,
	[projects_created] [int] NOT NULL,
	[projects_limit] [int] NOT NULL,
	[users_created] [int] NOT NULL,
	[users_limit] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ticket_types]    Script Date: 2021-04-24 10:00:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ticket_types](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[is_active] [tinyint] NOT NULL,
	[target_source_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tickets]    Script Date: 2021-04-24 10:00:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tickets](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ticket_no] [varchar](100) NOT NULL,
	[access_key] [varchar](40) NOT NULL,
	[subject] [varchar](200) NOT NULL,
	[description] [text] NOT NULL,
	[project_id] [int] NOT NULL,
	[type_id] [int] NOT NULL,
	[label_id] [int] NOT NULL,
	[assignee_id] [int] NULL,
	[priority] [varchar](100) NULL,
	[is_open] [tinyint] NOT NULL,
	[created_by_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[is_trashed] [tinyint] NOT NULL,
	[trashed_by_id] [int] NOT NULL,
	[target_source_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[transaction_logs]    Script Date: 2021-04-24 10:00:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transaction_logs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[amount] [decimal](10, 2) NOT NULL,
	[transaction_type] [varchar](40) NOT NULL,
	[reference_id] [int] NOT NULL,
	[description] [text] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[credit_account_id] [int] NOT NULL,
	[debit_account_id] [int] NOT NULL,
	[target_source_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_notifications]    Script Date: 2021-04-24 10:00:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_notifications](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[is_read] [tinyint] NOT NULL,
	[subject] [varchar](255) NOT NULL,
	[message] [text] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[created_by_id] [int] NOT NULL,
	[target_source_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 2021-04-24 10:00:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[company_id] [int] NOT NULL,
	[name] [varchar](30) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[token] [varchar](40) NOT NULL,
	[salt] [varchar](13) NOT NULL,
	[address] [varchar](200) NULL,
	[phone_number] [varchar](30) NULL,
	[hourly_rate] [decimal](10, 2) NOT NULL,
	[can_access_invoices_estimates] [tinyint] NOT NULL,
	[notes] [text] NULL,
	[avatar_file] [varchar](44) NULL,
	[created_at] [datetime] NOT NULL,
	[created_by_id] [int] NULL,
	[updated_at] [datetime] NOT NULL,
	[last_login] [datetime] NOT NULL,
	[last_visit] [datetime] NOT NULL,
	[last_activity] [datetime] NOT NULL,
	[is_active] [tinyint] NOT NULL,
	[is_admin] [tinyint] NOT NULL,
	[is_trashed] [tinyint] NOT NULL,
	[trashed_by_id] [int] NOT NULL,
	[is_group_trashed] [tinyint] NOT NULL,
	[target_source_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[activity_logs] ON 

INSERT [dbo].[activity_logs] ([id], [model], [object_id], [project_id], [action], [raw_data], [created_at], [created_by_id], [is_private], [is_hidden], [target_source_id]) VALUES (1, N'Projects', 1, 1, N'add', N'YToyOntzOjU6InRpdGxlIjtzOjIyOiI5NjIgLSBKYWNvIExsb3lkIFBsYW5zIjtzOjc6Im1lc3NhZ2UiO3M6MTc6ImNyZWF0ZWQgYSBwcm9qZWN0Ijt9', CAST(N'2021-01-01T00:00:00.000' AS DateTime), 1, 1, 0, 1)
INSERT [dbo].[activity_logs] ([id], [model], [object_id], [project_id], [action], [raw_data], [created_at], [created_by_id], [is_private], [is_hidden], [target_source_id]) VALUES (2, N'ProjectTaskLists', 1, 1, N'add', N'YToyOntzOjU6InRpdGxlIjtzOjQ6InRlc3QiO3M6NzoibWVzc2FnZSI7czoxOToiY3JlYXRlZCBhIHRhc2sgbGlzdCI7fQ==', CAST(N'2021-01-01T00:00:00.000' AS DateTime), 1, 1, 0, 1)
INSERT [dbo].[activity_logs] ([id], [model], [object_id], [project_id], [action], [raw_data], [created_at], [created_by_id], [is_private], [is_hidden], [target_source_id]) VALUES (3, N'Projects', 2, 2, N'add', N'YToyOntzOjU6InRpdGxlIjtzOjE6ImEiO3M6NzoibWVzc2FnZSI7czoxNzoiY3JlYXRlZCBhIHByb2plY3QiO30=', CAST(N'2021-04-23T15:08:32.000' AS DateTime), 4, 1, 0, 1)
SET IDENTITY_INSERT [dbo].[activity_logs] OFF
GO
INSERT [dbo].[aquila_table_version] ([table_id], [name], [version]) VALUES (1, N'Drill', N'6.1.6')
GO
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (1, 720, N'Dateline Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0, N'Dateline Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (2, 660, N'Samoa Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0, N'Samoa Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (3, 600, N'Hawaiian Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0, N'Hawaiian Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (4, 540, N'Alaskan Standard Time', 0, 0, 10, 0, 5, 2, 0, 0, 0, N'Alaskan Daylight Time', -60, 0, 4, 0, 1, 2, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (5, 480, N'Pacific Standard Time', 0, 0, 10, 0, 5, 2, 0, 0, 0, N'Pacific Daylight Time', -60, 0, 4, 0, 1, 2, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (6, 420, N'US Mountain Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0, N'US Mountain Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (7, 420, N'Mexico Standard Time 2', 0, 0, 10, 0, 5, 2, 0, 0, 0, N'Mexico Daylight Time 2', -60, 0, 4, 0, 1, 2, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (8, 420, N'Mountain Standard Time', 0, 0, 10, 0, 5, 2, 0, 0, 0, N'Mountain Daylight Time', -60, 0, 4, 0, 1, 2, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (9, 360, N'Central America Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0, N'Central America Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (10, 360, N'Central Standard Time', 0, 0, 10, 0, 5, 2, 0, 0, 0, N'Central Daylight Time', -60, 0, 4, 0, 1, 2, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (11, 360, N'Mexico Standard Time', 0, 0, 10, 0, 5, 2, 0, 0, 0, N'Mexico Daylight Time', -60, 0, 4, 0, 1, 2, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (12, 360, N'Canada Central Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0, N'Canada Central Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (13, 300, N'SA Pacific Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0, N'SA Pacific Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (14, 300, N'Eastern Standard Time', 0, 0, 10, 0, 5, 2, 0, 0, 0, N'Eastern Daylight Time', -60, 0, 4, 0, 1, 2, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (15, 300, N'US Eastern Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0, N'US Eastern Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (16, 240, N'Atlantic Standard Time', 0, 0, 10, 0, 5, 2, 0, 0, 0, N'Atlantic Daylight Time', -60, 0, 4, 0, 1, 2, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (17, 240, N'SA Western Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0, N'SA Western Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (18, 240, N'Pacific SA Standard Time', 0, 0, 3, 6, 2, 0, 0, 0, 0, N'Pacific SA Daylight Time', -60, 0, 10, 6, 2, 0, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (19, 210, N'Newfoundland Standard Time', 0, 0, 10, 0, 5, 2, 0, 0, 0, N'Newfoundland Daylight Time', -60, 0, 4, 0, 1, 2, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (20, 180, N'E. South America Standard Time', 0, 0, 2, 0, 2, 2, 0, 0, 0, N'E. South America Daylight Time', -60, 0, 10, 0, 3, 2, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (21, 180, N'SA Eastern Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0, N'SA Eastern Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (22, 180, N'Greenland Standard Time', 0, 0, 10, 0, 5, 2, 0, 0, 0, N'Greenland Daylight Time', -60, 0, 4, 0, 1, 2, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (23, 120, N'Mid-Atlantic Standard Time', 0, 0, 9, 0, 5, 2, 0, 0, 0, N'Mid-Atlantic Daylight Time', -60, 0, 3, 0, 5, 2, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (24, 60, N'Azores Standard Time', 0, 0, 10, 0, 5, 3, 0, 0, 0, N'Azores Daylight Time', -60, 0, 3, 0, 5, 2, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (25, 60, N'Cape Verde Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0, N'Cape Verde Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (26, 0, N'Greenwich Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0, N'Greenwich Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (27, 0, N'GMT Standard Time', 0, 0, 10, 0, 5, 2, 0, 0, 0, N'GMT Daylight Time', -60, 0, 3, 0, 5, 1, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (28, -60, N'W. Europe Standard Time', 0, 0, 10, 0, 5, 3, 0, 0, 0, N'W. Europe Daylight Time', -60, 0, 3, 0, 5, 2, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (29, -60, N'Central Europe Standard Time', 0, 0, 10, 0, 5, 3, 0, 0, 0, N'Central Europe Daylight Time', -60, 0, 3, 0, 5, 2, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (30, -60, N'Romance Standard Time', 0, 0, 10, 0, 5, 3, 0, 0, 0, N'Romance Daylight Time', -60, 0, 3, 0, 5, 2, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (31, -60, N'Central European Standard Time', 0, 0, 10, 0, 5, 3, 0, 0, 0, N'Central European Daylight Time', -60, 0, 3, 0, 5, 2, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (32, -60, N'W. Central Africa Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0, N'W. Central Africa Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (33, -120, N'GTB Standard Time', 0, 0, 10, 0, 5, 3, 0, 0, 0, N'GTB Daylight Time', -60, 0, 3, 0, 5, 2, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (34, -120, N'E. Europe Standard Time', 0, 0, 10, 0, 5, 1, 0, 0, 0, N'E. Europe Daylight Time', -60, 0, 3, 0, 5, 0, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (35, -120, N'Egypt Standard Time', 0, 0, 9, 3, 5, 2, 0, 0, 0, N'Egypt Daylight Time', -60, 0, 5, 5, 1, 2, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (36, -120, N'South Africa Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0, N'South Africa Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (37, -120, N'FLE Standard Time', 0, 0, 10, 0, 5, 4, 0, 0, 0, N'FLE Daylight Time', -60, 0, 3, 0, 5, 3, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (38, -120, N'Jerusalem Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0, N'Jerusalem Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (39, -180, N'Arabic Standard Time', 0, 0, 10, 0, 1, 4, 0, 0, 0, N'Arabic Daylight Time', -60, 0, 4, 0, 1, 3, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (40, -180, N'Arab Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0, N'Arab Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (41, -180, N'Russian Standard Time', 0, 0, 10, 0, 5, 3, 0, 0, 0, N'Russian Daylight Time', -60, 0, 3, 0, 5, 2, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (42, -180, N'E. Africa Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0, N'E. Africa Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (43, -210, N'Iran Standard Time', 0, 0, 9, 2, 4, 2, 0, 0, 0, N'Iran Daylight Time', -60, 0, 3, 0, 1, 2, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (44, -240, N'Arabian Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0, N'Arabian Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (45, -240, N'Caucasus Standard Time', 0, 0, 10, 0, 5, 3, 0, 0, 0, N'Caucasus Daylight Time', -60, 0, 3, 0, 5, 2, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (46, -270, N'Afghanistan Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0, N'Afghanistan Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (47, -300, N'Ekaterinburg Standard Time', 0, 0, 10, 0, 5, 3, 0, 0, 0, N'Ekaterinburg Daylight Time', -60, 0, 3, 0, 5, 2, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (48, -300, N'West Asia Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0, N'West Asia Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (49, -330, N'India Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0, N'India Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (50, -345, N'Nepal Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0, N'Nepal Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (51, -360, N'N. Central Asia Standard Time', 0, 0, 10, 0, 5, 3, 0, 0, 0, N'N. Central Asia Daylight Time', -60, 0, 3, 0, 5, 2, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (52, -360, N'Central Asia Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0, N'Central Asia Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (53, -360, N'Sri Lanka Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0, N'Sri Lanka Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (54, -390, N'Myanmar Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0, N'Myanmar Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (55, -420, N'SE Asia Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0, N'SE Asia Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (56, -420, N'North Asia Standard Time', 0, 0, 10, 0, 5, 3, 0, 0, 0, N'North Asia Daylight Time', -60, 0, 3, 0, 5, 2, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (57, -480, N'China Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0, N'China Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (58, -480, N'North Asia East Standard Time', 0, 0, 10, 0, 5, 3, 0, 0, 0, N'North Asia East Daylight Time', -60, 0, 3, 0, 5, 2, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (59, -480, N'Malay Peninsula Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0, N'Malay Peninsula Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (60, -480, N'W. Australia Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0, N'W. Australia Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (61, -480, N'Taipei Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0, N'Taipei Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (62, -540, N'Tokyo Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0, N'Tokyo Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (63, -540, N'Korea Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0, N'Korea Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (64, -540, N'Yakutsk Standard Time', 0, 0, 10, 0, 5, 3, 0, 0, 0, N'Yakutsk Daylight Time', -60, 0, 3, 0, 5, 2, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (65, -570, N'Cen. Australia Standard Time', 0, 0, 3, 0, 5, 3, 0, 0, 0, N'Cen. Australia Daylight Time', -60, 0, 10, 0, 5, 2, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (66, -570, N'AUS Central Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0, N'AUS Central Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (67, -600, N'E. Australia Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0, N'E. Australia Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (68, -600, N'AUS Eastern Standard Time', 0, 0, 3, 0, 5, 3, 0, 0, 0, N'AUS Eastern Daylight Time', -60, 0, 10, 0, 5, 2, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (69, -600, N'West Pacific Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0, N'West Pacific Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (70, -600, N'Tasmania Standard Time', 0, 0, 3, 0, 5, 3, 0, 0, 0, N'Tasmania Daylight Time', -60, 0, 10, 0, 1, 2, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (71, -600, N'Vladivostok Standard Time', 0, 0, 10, 0, 5, 3, 0, 0, 0, N'Vladivostok Daylight Time', -60, 0, 3, 0, 5, 2, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (72, -660, N'Central Pacific Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0, N'Central Pacific Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (73, -720, N'New Zealand Standard Time', 0, 0, 3, 0, 3, 2, 0, 0, 0, N'New Zealand Daylight Time', -60, 0, 10, 0, 1, 2, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (74, -720, N'Fiji Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0, N'Fiji Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0)
INSERT [dbo].[aquila_time_zone] ([ZoneID], [Bias], [Standard_Name], [Standard_Bias], [Standard_Year], [Standard_Month], [Standard_WeekDay], [Standard_Day], [Standard_Hour], [Standard_Min], [Standard_Sec], [Standard_MilliSec], [DayLight_Name], [DayLight_Bias], [DayLight_Year], [DayLight_Month], [DayLight_DayWeek], [DayLight_Day], [DayLight_Hour], [DayLight_Min], [DayLight_Sec], [DayLight_MilliSec]) VALUES (75, -780, N'Tonga Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0, N'Tonga Standard Time', 0, 0, 0, 0, 0, 0, 0, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[companies] ON 

INSERT [dbo].[companies] ([id], [parent_id], [name], [address], [vat_no], [phone_number], [logo_file], [created_at], [created_by_id], [updated_at], [is_active], [is_trashed], [trashed_by_id], [target_source_id]) VALUES (1, 0, N'Quintin de Bruin', NULL, NULL, NULL, NULL, CAST(N'2021-01-01T00:00:00.000' AS DateTime), 1, CAST(N'2021-01-01T00:00:00.000' AS DateTime), 1, 0, 0, 1)
INSERT [dbo].[companies] ([id], [parent_id], [name], [address], [vat_no], [phone_number], [logo_file], [created_at], [created_by_id], [updated_at], [is_active], [is_trashed], [trashed_by_id], [target_source_id]) VALUES (2, 0, N'Spectiv Mechanical Drawings', NULL, NULL, NULL, NULL, CAST(N'2021-01-01T00:00:00.000' AS DateTime), 2, CAST(N'2021-01-01T00:00:00.000' AS DateTime), 1, 0, 0, 2)
INSERT [dbo].[companies] ([id], [parent_id], [name], [address], [vat_no], [phone_number], [logo_file], [created_at], [created_by_id], [updated_at], [is_active], [is_trashed], [trashed_by_id], [target_source_id]) VALUES (3, 1, N'Hot Point Investments', N'Plot 579 Naauwpoort', NULL, N'+27 82 891 7616', NULL, CAST(N'2021-01-01T00:00:00.000' AS DateTime), 1, CAST(N'2021-01-01T00:00:00.000' AS DateTime), 1, 0, 0, 1)
INSERT [dbo].[companies] ([id], [parent_id], [name], [address], [vat_no], [phone_number], [logo_file], [created_at], [created_by_id], [updated_at], [is_active], [is_trashed], [trashed_by_id], [target_source_id]) VALUES (4, 0, N'123', NULL, NULL, NULL, NULL, CAST(N'2021-01-01T00:00:00.000' AS DateTime), 5, CAST(N'2021-04-22T13:58:51.000' AS DateTime), 1, 0, 0, 3)
SET IDENTITY_INSERT [dbo].[companies] OFF
GO
SET IDENTITY_INSERT [dbo].[configurations] ON 

INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (1, N'mailing', N'smtp_server', N'server@example.com', 1)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (2, N'mailing', N'smtp_port', N'101', 1)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (3, N'mailing', N'smtp_authenticate', N'1', 1)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (4, N'mailing', N'smtp_username', N'username', 1)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (5, N'mailing', N'smtp_password', N'password', 1)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (6, N'mailing', N'smtp_secure_connection', N'no', 1)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (7, N'mailing', N'smtp_reply_from_email', N'noreply@example.com', 1)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (8, N'mailing', N'smtp_from_name', N'PROMS', 1)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (9, N'mailing', N'smtp_from_email', N'support@example.com', 1)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (10, N'system', N'site_name', N'Klipspruit Collaboration', 1)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (11, N'system', N'contact_email', N'system@de-bruin.co.za', 1)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (12, N'system', N'default_currency', N'R', 1)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (13, N'system', N'items_per_page', N'10', 1)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (14, N'system', N'calendar_google_api_key', NULL, 1)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (15, N'system', N'calendar_google_event_address', NULL, 1)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (16, N'system', N'paypal_email', N'paypal_sandbox@example.com', 1)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (17, N'system', N'paypal_sandbox', N'yes', 1)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (18, N'system', N'paypal_currency_code', N'USD', 1)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (19, N'system', N'stripe_secret_key', N'sk_live_lV5nITIlIlzvSZmkfunl5bH3', 1)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (20, N'system', N'stripe_publishable_key', N'pk_live_ogI79OxdoS6YUGWLkkAVwbC3', 1)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (21, N'system', N'stripe_currency_code', N'USD', 1)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (22, N'system', N'offline_bank_name', N'Sample Bank', 1)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (23, N'system', N'offline_bank_account', N'XXXXXX00000000', 1)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (24, N'system', N'invoice_color', N'#00A65A', 1)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (25, N'system', N'send_due_date_invoice_reminder_before_days', N'1', 1)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (26, N'system', N'send_due_date_invoice_reminder_after_days', N'1', 1)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (27, N'system', N'logo_text', N'Q de Bruin', 1)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (28, N'mailing', N'smtp_server', N'server@example.com', 2)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (29, N'mailing', N'smtp_port', N'101', 2)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (30, N'mailing', N'smtp_authenticate', N'1', 2)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (31, N'mailing', N'smtp_username', N'username', 2)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (32, N'mailing', N'smtp_password', N'password', 2)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (33, N'mailing', N'smtp_secure_connection', N'no', 2)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (34, N'mailing', N'smtp_reply_from_email', N'noreply@example.com', 2)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (35, N'mailing', N'smtp_from_name', N'PROMS', 2)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (36, N'mailing', N'smtp_from_email', N'support@example.com', 2)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (37, N'system', N'site_name', N'Kilpspruit Collaboration', 2)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (38, N'system', N'contact_email', N'contact@example.com', 2)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (39, N'system', N'default_currency', N'$', 2)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (40, N'system', N'items_per_page', N'10', 2)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (41, N'system', N'calendar_google_api_key', NULL, 2)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (42, N'system', N'calendar_google_event_address', NULL, 2)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (43, N'system', N'paypal_email', N'paypal_sandbox@example.com', 2)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (44, N'system', N'paypal_sandbox', N'yes', 2)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (45, N'system', N'paypal_currency_code', N'USD', 2)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (46, N'system', N'stripe_secret_key', N'sk_live_lV5nITIlIlzvSZmkfunl5bH3', 2)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (47, N'system', N'stripe_publishable_key', N'pk_live_ogI79OxdoS6YUGWLkkAVwbC3', 2)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (48, N'system', N'stripe_currency_code', N'USD', 2)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (49, N'system', N'offline_bank_name', N'Sample Bank', 2)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (50, N'system', N'offline_bank_account', N'XXXXXX00000000', 2)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (51, N'system', N'invoice_color', N'#00A65A', 2)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (52, N'system', N'send_due_date_invoice_reminder_before_days', N'1', 2)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (53, N'system', N'send_due_date_invoice_reminder_after_days', N'1', 2)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (54, N'system', N'logo_text', N'PROMS', 2)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (55, N'mailing', N'smtp_server', N'server@example.com', 3)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (56, N'mailing', N'smtp_port', N'101', 3)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (57, N'mailing', N'smtp_authenticate', N'1', 3)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (58, N'mailing', N'smtp_username', N'username', 3)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (59, N'mailing', N'smtp_password', N'password', 3)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (60, N'mailing', N'smtp_secure_connection', N'no', 3)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (61, N'mailing', N'smtp_reply_from_email', N'noreply@example.com', 3)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (62, N'mailing', N'smtp_from_name', N'PROMS', 3)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (63, N'mailing', N'smtp_from_email', N'support@example.com', 3)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (64, N'system', N'site_name', N'Project Management System', 3)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (65, N'system', N'contact_email', N'contact@example.com', 3)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (66, N'system', N'default_currency', N'$', 3)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (67, N'system', N'items_per_page', N'10', 3)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (68, N'system', N'calendar_google_api_key', NULL, 3)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (69, N'system', N'calendar_google_event_address', NULL, 3)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (70, N'system', N'paypal_email', N'paypal_sandbox@example.com', 3)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (71, N'system', N'paypal_sandbox', N'yes', 3)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (72, N'system', N'paypal_currency_code', N'USD', 3)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (73, N'system', N'stripe_secret_key', N'sk_live_lV5nITIlIlzvSZmkfunl5bH3', 3)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (74, N'system', N'stripe_publishable_key', N'pk_live_ogI79OxdoS6YUGWLkkAVwbC3', 3)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (75, N'system', N'stripe_currency_code', N'USD', 3)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (76, N'system', N'offline_bank_name', N'Sample Bank', 3)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (77, N'system', N'offline_bank_account', N'XXXXXX00000000', 3)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (78, N'system', N'invoice_color', N'#00A65A', 3)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (79, N'system', N'send_due_date_invoice_reminder_before_days', N'1', 3)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (80, N'system', N'send_due_date_invoice_reminder_after_days', N'1', 3)
INSERT [dbo].[configurations] ([id], [category_name], [name], [value], [target_source_id]) VALUES (81, N'system', N'logo_text', N'PROMS', 3)
SET IDENTITY_INSERT [dbo].[configurations] OFF
GO
INSERT [dbo].[estimate_items] ([u_key], [o_key], [estimate_id], [quantity], [amount], [description], [target_source_id]) VALUES (N'47d4c0b8c82e2a693f32b3c9119e6c452ed62997', 1, 1, CAST(1.00 AS Decimal(10, 2)), CAST(15000.00 AS Decimal(10, 2)), N'Architectural Plans for council submission', 1)
GO
SET IDENTITY_INSERT [dbo].[estimates] ON 

INSERT [dbo].[estimates] ([id], [estimate_no], [client_id], [project_id], [company_id], [company_name], [company_address], [status], [subject], [due_date], [tax], [tax_rate], [tax2], [tax_rate2], [discount_amount], [discount_amount_type], [note], [private_note], [total_amount], [created_at], [created_by_id], [updated_at], [access_key], [is_online_payment_disabled], [is_trashed], [trashed_by_id], [target_source_id]) VALUES (1, N'EST-000001', 3, 1, 3, N'Hot Point Investments', N'Plot 579 Naauwpoort', 1, N'Update Architectural Plans', CAST(N'2021-04-29T00:00:00.000' AS DateTime), N'', CAST(0.00 AS Decimal(10, 2)), N'', CAST(0.00 AS Decimal(10, 2)), CAST(0.00 AS Decimal(10, 2)), N'percentage', N'Update plans with pool, walls, carports and outside building', N'', CAST(15000.00 AS Decimal(10, 2)), CAST(N'2021-04-15T11:45:32.000' AS DateTime), 1, CAST(N'2021-04-15T11:45:32.000' AS DateTime), N'be996cccc5618b7d380baeefbd9d17e8519f51cf', 1, 0, 0, 1)
SET IDENTITY_INSERT [dbo].[estimates] OFF
GO
SET IDENTITY_INSERT [dbo].[global_labels] ON 

INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (1, N'PROJECT', N'NEW', N'FFEB3B', 1, 1, 1)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (2, N'PROJECT', N'CANCELED', N'FF5722', 0, 1, 1)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (3, N'PROJECT', N'INPROGRESS', N'8BC34A', 0, 1, 1)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (4, N'PROJECT', N'PAUSED', N'FF5722', 0, 1, 1)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (5, N'TASK', N'NEW', N'F5BA42', 1, 1, 1)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (6, N'TASK', N'CONFIRMED', N'B276D8', 0, 1, 1)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (7, N'TASK', N'DUPLICATE', N'31353C', 0, 1, 1)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (8, N'TASK', N'WONT FIX', N'7277D5', 0, 1, 1)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (9, N'TASK', N'ASSIGNED', N'D9434E', 0, 1, 1)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (10, N'TASK', N'BLOCKED', N'E3643E', 0, 1, 1)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (11, N'TASK', N'IN PROGRESS', N'A5ADB8', 0, 1, 1)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (12, N'TASK', N'FIXED', N'F59B43', 0, 1, 1)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (13, N'TASK', N'REOPENED', N'4B8CDC', 0, 1, 1)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (14, N'TASK', N'VERIFIED', N'B1C252', 0, 1, 1)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (15, N'TICKET', N'NEW', N'FFEB3B', 1, 1, 1)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (16, N'TICKET', N'INPROGRESS', N'8BC34A', 0, 1, 1)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (17, N'TICKET', N'PAUSED', N'FF5722', 0, 1, 1)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (18, N'TICKET', N'DONE', N'B276D8', 0, 1, 1)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (19, N'PROJECT', N'NEW', N'FFEB3B', 1, 1, 2)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (20, N'PROJECT', N'CANCELED', N'FF5722', 0, 1, 2)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (21, N'PROJECT', N'INPROGRESS', N'8BC34A', 0, 1, 2)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (22, N'PROJECT', N'PAUSED', N'FF5722', 0, 1, 2)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (23, N'TASK', N'NEW', N'F5BA42', 1, 1, 2)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (24, N'TASK', N'CONFIRMED', N'B276D8', 0, 1, 2)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (25, N'TASK', N'DUPLICATE', N'31353C', 0, 1, 2)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (26, N'TASK', N'WONT FIX', N'7277D5', 0, 1, 2)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (27, N'TASK', N'ASSIGNED', N'D9434E', 0, 1, 2)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (28, N'TASK', N'BLOCKED', N'E3643E', 0, 1, 2)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (29, N'TASK', N'IN PROGRESS', N'A5ADB8', 0, 1, 2)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (30, N'TASK', N'FIXED', N'F59B43', 0, 1, 2)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (31, N'TASK', N'REOPENED', N'4B8CDC', 0, 1, 2)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (32, N'TASK', N'VERIFIED', N'B1C252', 0, 1, 2)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (33, N'TICKET', N'NEW', N'FFEB3B', 1, 1, 2)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (34, N'TICKET', N'INPROGRESS', N'8BC34A', 0, 1, 2)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (35, N'TICKET', N'PAUSED', N'FF5722', 0, 1, 2)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (36, N'TICKET', N'DONE', N'B276D8', 0, 1, 2)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (37, N'PROJECT', N'NEW', N'FFEB3B', 1, 1, 3)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (38, N'PROJECT', N'CANCELED', N'FF5722', 0, 1, 3)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (39, N'PROJECT', N'INPROGRESS', N'8BC34A', 0, 1, 3)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (40, N'PROJECT', N'PAUSED', N'FF5722', 0, 1, 3)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (41, N'TASK', N'NEW', N'F5BA42', 1, 1, 3)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (42, N'TASK', N'CONFIRMED', N'B276D8', 0, 1, 3)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (43, N'TASK', N'DUPLICATE', N'31353C', 0, 1, 3)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (44, N'TASK', N'WONT FIX', N'7277D5', 0, 1, 3)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (45, N'TASK', N'ASSIGNED', N'D9434E', 0, 1, 3)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (46, N'TASK', N'BLOCKED', N'E3643E', 0, 1, 3)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (47, N'TASK', N'IN PROGRESS', N'A5ADB8', 0, 1, 3)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (48, N'TASK', N'FIXED', N'F59B43', 0, 1, 3)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (49, N'TASK', N'REOPENED', N'4B8CDC', 0, 1, 3)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (50, N'TASK', N'VERIFIED', N'B1C252', 0, 1, 3)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (51, N'TICKET', N'NEW', N'FFEB3B', 1, 1, 3)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (52, N'TICKET', N'INPROGRESS', N'8BC34A', 0, 1, 3)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (53, N'TICKET', N'PAUSED', N'FF5722', 0, 1, 3)
INSERT [dbo].[global_labels] ([id], [type], [name], [bg_color_hex], [is_default], [is_active], [target_source_id]) VALUES (54, N'TICKET', N'DONE', N'B276D8', 0, 1, 3)
SET IDENTITY_INSERT [dbo].[global_labels] OFF
GO
SET IDENTITY_INSERT [dbo].[iconfigurations] ON 

INSERT [dbo].[iconfigurations] ([id], [category_name], [name], [value]) VALUES (1, N'mailing', N'smtp_server', N'smtpout.example.com')
INSERT [dbo].[iconfigurations] ([id], [category_name], [name], [value]) VALUES (2, N'mailing', N'smtp_port', N'25')
INSERT [dbo].[iconfigurations] ([id], [category_name], [name], [value]) VALUES (3, N'mailing', N'smtp_authenticate', N'1')
INSERT [dbo].[iconfigurations] ([id], [category_name], [name], [value]) VALUES (4, N'mailing', N'smtp_username', N'username@example.com')
INSERT [dbo].[iconfigurations] ([id], [category_name], [name], [value]) VALUES (5, N'mailing', N'smtp_password', N'password')
INSERT [dbo].[iconfigurations] ([id], [category_name], [name], [value]) VALUES (6, N'mailing', N'smtp_secure_connection', N'no')
INSERT [dbo].[iconfigurations] ([id], [category_name], [name], [value]) VALUES (7, N'mailing', N'smtp_reply_from_email', N'no-reply@example.com')
INSERT [dbo].[iconfigurations] ([id], [category_name], [name], [value]) VALUES (8, N'mailing', N'smtp_from_name', N'PROMS')
INSERT [dbo].[iconfigurations] ([id], [category_name], [name], [value]) VALUES (9, N'mailing', N'smtp_from_email', N'hello@example.com')
INSERT [dbo].[iconfigurations] ([id], [category_name], [name], [value]) VALUES (10, N'system', N'paypal_account', N'paypal@example.com')
INSERT [dbo].[iconfigurations] ([id], [category_name], [name], [value]) VALUES (11, N'system', N'site_name', N'Project Management System')
INSERT [dbo].[iconfigurations] ([id], [category_name], [name], [value]) VALUES (12, N'system', N'logo_text', N'Klipspruit')
SET IDENTITY_INSERT [dbo].[iconfigurations] OFF
GO
SET IDENTITY_INSERT [dbo].[ipackages] ON 

INSERT [dbo].[ipackages] ([id], [name], [price_per_month], [max_storage], [max_users], [max_projects], [created_at], [updated_at]) VALUES (1, N'Free', 0, 2, 10, 5, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2021-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[ipackages] ([id], [name], [price_per_month], [max_storage], [max_users], [max_projects], [created_at], [updated_at]) VALUES (2, N'Pro', 15, 10, 20, 10, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2021-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[ipackages] ([id], [name], [price_per_month], [max_storage], [max_users], [max_projects], [created_at], [updated_at]) VALUES (3, N'Enterprise', 29, 25, 50, 40, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2020-02-16T11:17:29.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[ipackages] OFF
GO
SET IDENTITY_INSERT [dbo].[iusers] ON 

INSERT [dbo].[iusers] ([id], [name], [email], [token], [salt], [address], [phone_number], [created_at], [created_by_id], [updated_at], [last_login], [last_visit], [last_activity], [is_active], [is_super]) VALUES (1, N'Quintin de Bruin', N'quintin@spectiv.co.za', N'bddeb7e13348ed87598ee66b7c9f77ca2bb5a8ab', N'f6656e8d59b38', NULL, NULL, CAST(N'2021-04-14T18:32:33.000' AS DateTime), NULL, CAST(N'2021-04-14T18:32:33.000' AS DateTime), CAST(N'2021-04-24T05:21:06.000' AS DateTime), CAST(N'2021-04-24T05:19:55.000' AS DateTime), CAST(N'2021-04-24T05:21:33.000' AS DateTime), 1, 1)
INSERT [dbo].[iusers] ([id], [name], [email], [token], [salt], [address], [phone_number], [created_at], [created_by_id], [updated_at], [last_login], [last_visit], [last_activity], [is_active], [is_super]) VALUES (2, N'Shendi', N'danevhome01@gmail.com', N'bddeb7e13348ed87598ee66b7c9f77ca2bb5a8ab', N'f6656e8d59b38', NULL, NULL, CAST(N'2021-04-14T18:32:33.000' AS DateTime), NULL, CAST(N'2021-04-14T18:32:33.000' AS DateTime), CAST(N'2021-04-24T06:27:20.000' AS DateTime), CAST(N'2021-04-23T14:39:00.000' AS DateTime), CAST(N'2021-04-24T06:27:42.000' AS DateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[iusers] OFF
GO
SET IDENTITY_INSERT [dbo].[iwidgets] ON 

INSERT [dbo].[iwidgets] ([id], [title], [description], [photo], [created_at], [updated_at]) VALUES (18, N'Hello, everyone', N'This impressive paella is a perfect party dish and a fun meal to cook together with your guests. Add 1 cup of frozen peas along with the mussels, if you like.', N'8a02ed8de0077361cf24032752d4b24480d61dbc.png', CAST(N'2021-04-23T15:15:26.000' AS DateTime), CAST(N'2021-04-23T14:35:17.000' AS DateTime))
INSERT [dbo].[iwidgets] ([id], [title], [description], [photo], [created_at], [updated_at]) VALUES (19, N'Another widget', N'This impressive paella is a perfect party dish and a fun meal to cook together with your guests. Add 1 cup of frozen peas along with the mussels, if you like.', N'ba1ea7a35a0a9bec8502fab0ff895da5fcc34fe0.png', CAST(N'2021-04-23T14:35:42.000' AS DateTime), CAST(N'2021-04-23T14:35:42.000' AS DateTime))
INSERT [dbo].[iwidgets] ([id], [title], [description], [photo], [created_at], [updated_at]) VALUES (20, N'New Widget 123', N'This impressive paella is a perfect party dish and a fun meal to cook together with your guests. Add 1 cup of frozen peas along with the mussels, if you like.', N'244473b8b98fb8bfa48580b176e492c7ab32fb8a.png', CAST(N'2021-04-23T14:36:44.000' AS DateTime), CAST(N'2021-04-23T14:36:44.000' AS DateTime))
INSERT [dbo].[iwidgets] ([id], [title], [description], [photo], [created_at], [updated_at]) VALUES (21, N'Hello, test widget', N'This impressive paella is a perfect party dish and a fun meal to cook together with your guests. Add 1 cup of frozen peas along with the mussels, if you like.', N'98e9d5bfd3ffc2074ec9188090798f7b431f781b.png', CAST(N'2021-04-23T14:37:11.000' AS DateTime), CAST(N'2021-04-23T14:37:11.000' AS DateTime))
INSERT [dbo].[iwidgets] ([id], [title], [description], [photo], [created_at], [updated_at]) VALUES (22, N'Test Widget 77', N'This impressive paella is a perfect party dish and a fun meal to cook together with your guests. Add 1 cup of frozen peas along with the mussels, if you like.', N'ca057c1d64073ac48c79c898a149f216ede54a77.png', CAST(N'2021-04-23T14:37:34.000' AS DateTime), CAST(N'2021-04-23T14:37:34.000' AS DateTime))
INSERT [dbo].[iwidgets] ([id], [title], [description], [photo], [created_at], [updated_at]) VALUES (23, N'Good widget', N'This impressive paella is a perfect party dish and a fun meal to cook together with your guests. Add 1 cup of frozen peas along with the mussels, if you like.					', N'80d2ec1d97479095411aa7f5e30d02a89934bea4.png', CAST(N'2021-04-23T14:38:05.000' AS DateTime), CAST(N'2021-04-23T14:38:05.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[iwidgets] OFF
GO
SET IDENTITY_INSERT [dbo].[project_task_lists] ON 

INSERT [dbo].[project_task_lists] ([id], [project_id], [name], [description], [is_private], [is_high_priority], [sort_order], [start_date], [due_date], [created_at], [created_by_id], [updated_at], [is_trashed], [trashed_by_id], [target_source_id]) VALUES (1, 1, N'test', N'test', 1, 1, 1, CAST(N'2021-04-02' AS Date), CAST(N'2021-04-08' AS Date), CAST(N'2021-04-22T14:32:11.000' AS DateTime), 1, CAST(N'2021-04-22T14:32:11.000' AS DateTime), 0, 0, 1)
SET IDENTITY_INSERT [dbo].[project_task_lists] OFF
GO
INSERT [dbo].[project_users] ([project_id], [user_id], [target_source_id]) VALUES (2, 4, 1)
GO
SET IDENTITY_INSERT [dbo].[projects] ON 

INSERT [dbo].[projects] ([id], [name], [company_id], [label_id], [description], [is_featured], [is_enable_timelog], [is_timelog_visible], [start_date], [due_date], [completed_at], [completed_by_id], [created_at], [created_by_id], [updated_at], [is_trashed], [target_source_id]) VALUES (1, N'962 - Jaco Lloyd Plans', 3, 1, N'Update plans with pool, walls, carports and building at back', 0, 0, 0, CAST(N'2021-04-15' AS Date), CAST(N'2021-04-29' AS Date), CAST(N'2021-01-01T00:00:00.000' AS DateTime), NULL, CAST(N'2021-01-01T00:00:00.000' AS DateTime), 1, CAST(N'2021-01-01T00:00:00.000' AS DateTime), 0, 1)
INSERT [dbo].[projects] ([id], [name], [company_id], [label_id], [description], [is_featured], [is_enable_timelog], [is_timelog_visible], [start_date], [due_date], [completed_at], [completed_by_id], [created_at], [created_by_id], [updated_at], [is_trashed], [target_source_id]) VALUES (2, N'a', 3, 3, N'a', 0, 0, 0, CAST(N'2021-04-02' AS Date), CAST(N'2021-04-15' AS Date), CAST(N'2021-01-01T00:00:00.000' AS DateTime), NULL, CAST(N'2021-01-01T00:00:00.000' AS DateTime), 4, CAST(N'2021-01-01T00:00:00.000' AS DateTime), 0, 1)
SET IDENTITY_INSERT [dbo].[projects] OFF
GO
INSERT [dbo].[searchable_objects] ([model], [object_id], [field_name], [field_content], [project_id], [is_private], [created_at], [target_source_id]) VALUES (N'Estimates', 1, N'subject', N'Update Architectural Plans', 1, 0, CAST(N'2021-04-15T11:45:32.000' AS DateTime), 1)
INSERT [dbo].[searchable_objects] ([model], [object_id], [field_name], [field_content], [project_id], [is_private], [created_at], [target_source_id]) VALUES (N'Projects', 1, N'description', N'Update plans with pool, walls, carports and building at back', 1, 0, CAST(N'2021-04-15T11:40:11.000' AS DateTime), 1)
INSERT [dbo].[searchable_objects] ([model], [object_id], [field_name], [field_content], [project_id], [is_private], [created_at], [target_source_id]) VALUES (N'Projects', 1, N'name', N'962 - Jaco Lloyd Plans', 1, 0, CAST(N'2021-04-15T11:40:11.000' AS DateTime), 1)
INSERT [dbo].[searchable_objects] ([model], [object_id], [field_name], [field_content], [project_id], [is_private], [created_at], [target_source_id]) VALUES (N'Projects', 2, N'description', N'a', 2, 0, CAST(N'2021-04-23T15:08:32.000' AS DateTime), 1)
INSERT [dbo].[searchable_objects] ([model], [object_id], [field_name], [field_content], [project_id], [is_private], [created_at], [target_source_id]) VALUES (N'Projects', 2, N'name', N'a', 2, 0, CAST(N'2021-04-23T15:08:32.000' AS DateTime), 1)
INSERT [dbo].[searchable_objects] ([model], [object_id], [field_name], [field_content], [project_id], [is_private], [created_at], [target_source_id]) VALUES (N'ProjectTaskLists', 1, N'description', N'test', 1, 1, CAST(N'2021-04-22T14:32:11.000' AS DateTime), 1)
INSERT [dbo].[searchable_objects] ([model], [object_id], [field_name], [field_content], [project_id], [is_private], [created_at], [target_source_id]) VALUES (N'ProjectTaskLists', 1, N'name', N'test', 1, 1, CAST(N'2021-04-22T14:32:11.000' AS DateTime), 1)
GO
SET IDENTITY_INSERT [dbo].[target_sources] ON 

INSERT [dbo].[target_sources] ([id], [name], [subscription_id], [created_by_id], [is_active], [expire_date], [storage_used], [storage_limit], [projects_created], [projects_limit], [users_created], [users_limit], [created_at], [updated_at]) VALUES (1, N'Arqtek', 3, 1, 1, CAST(N'2021-05-15' AS Date), 0, CAST(25.00 AS Decimal(10, 2)), 2, 40, 3, 50, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2021-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[target_sources] ([id], [name], [subscription_id], [created_by_id], [is_active], [expire_date], [storage_used], [storage_limit], [projects_created], [projects_limit], [users_created], [users_limit], [created_at], [updated_at]) VALUES (2, N'Spectiv', 3, 2, 1, CAST(N'2021-05-15' AS Date), 0, CAST(25.00 AS Decimal(10, 2)), 0, 40, 1, 50, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2021-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[target_sources] ([id], [name], [subscription_id], [created_by_id], [is_active], [expire_date], [storage_used], [storage_limit], [projects_created], [projects_limit], [users_created], [users_limit], [created_at], [updated_at]) VALUES (3, N'123', 3, 5, 1, CAST(N'2021-05-22' AS Date), 0, CAST(25.00 AS Decimal(10, 2)), 0, 40, 1, 50, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2021-01-01T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[target_sources] OFF
GO
SET IDENTITY_INSERT [dbo].[ticket_types] ON 

INSERT [dbo].[ticket_types] ([id], [name], [is_active], [target_source_id]) VALUES (1, N'General Support', 1, 1)
INSERT [dbo].[ticket_types] ([id], [name], [is_active], [target_source_id]) VALUES (2, N'General Support', 1, 2)
INSERT [dbo].[ticket_types] ([id], [name], [is_active], [target_source_id]) VALUES (3, N'General Support', 1, 3)
SET IDENTITY_INSERT [dbo].[ticket_types] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [company_id], [name], [email], [token], [salt], [address], [phone_number], [hourly_rate], [can_access_invoices_estimates], [notes], [avatar_file], [created_at], [created_by_id], [updated_at], [last_login], [last_visit], [last_activity], [is_active], [is_admin], [is_trashed], [trashed_by_id], [is_group_trashed], [target_source_id]) VALUES (1, 1, N'Quintin de Bruin', N'quintin@de-bruin.co.za', N'9ec85c820819ad5ed13cf51ba19861ccd966560f', N'473ced583771c', NULL, NULL, CAST(15.00 AS Decimal(10, 2)), 0, NULL, N'aa79ecebdc9b030da8733b8620578a4e9738cf28.png', CAST(N'2021-01-01T00:00:00.000' AS DateTime), NULL, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2021-04-24T05:35:20.000' AS DateTime), CAST(N'2021-04-24T03:57:21.000' AS DateTime), CAST(N'2021-04-24T05:40:17.000' AS DateTime), 1, 1, 0, 0, 0, 1)
INSERT [dbo].[users] ([id], [company_id], [name], [email], [token], [salt], [address], [phone_number], [hourly_rate], [can_access_invoices_estimates], [notes], [avatar_file], [created_at], [created_by_id], [updated_at], [last_login], [last_visit], [last_activity], [is_active], [is_admin], [is_trashed], [trashed_by_id], [is_group_trashed], [target_source_id]) VALUES (2, 2, N'Quintin de Bruin', N'quintin@spectiv.co.za', N'6ad6a42401788b357e2025c0257afff36a0141d9', N'39834e58772f6', NULL, NULL, CAST(15.00 AS Decimal(10, 2)), 0, NULL, NULL, CAST(N'2021-01-01T00:00:00.000' AS DateTime), NULL, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2021-04-23T18:37:29.323' AS DateTime), CAST(N'2021-04-23T18:37:29.323' AS DateTime), CAST(N'2021-04-23T18:37:29.323' AS DateTime), 1, 0, 0, 0, 0, 2)
INSERT [dbo].[users] ([id], [company_id], [name], [email], [token], [salt], [address], [phone_number], [hourly_rate], [can_access_invoices_estimates], [notes], [avatar_file], [created_at], [created_by_id], [updated_at], [last_login], [last_visit], [last_activity], [is_active], [is_admin], [is_trashed], [trashed_by_id], [is_group_trashed], [target_source_id]) VALUES (3, 3, N'Jaco Lloyd', N'jacolloyd@hotmail.com', N'49ba368a9f1ac56e15d343a039aab3a6cfb02ac4', N'011198cc28dbb', N'Plot 579 Naauwpoort', N'+27 82 891 7616', CAST(0.00 AS Decimal(10, 2)), 0, N'962', NULL, CAST(N'2021-01-01T00:00:00.000' AS DateTime), 1, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2021-04-24T05:35:20.000' AS DateTime), CAST(N'2021-04-24T03:57:21.000' AS DateTime), CAST(N'2021-04-24T05:40:17.000' AS DateTime), 1, 0, 0, 0, 0, 1)
INSERT [dbo].[users] ([id], [company_id], [name], [email], [token], [salt], [address], [phone_number], [hourly_rate], [can_access_invoices_estimates], [notes], [avatar_file], [created_at], [created_by_id], [updated_at], [last_login], [last_visit], [last_activity], [is_active], [is_admin], [is_trashed], [trashed_by_id], [is_group_trashed], [target_source_id]) VALUES (4, 1, N'Jarun', N'danevhome01@gmail.com', N'd994ca3edae7a87f160f9a4b49f40537631fa08f', N'8ccd8abff18d8', N'', N'', CAST(0.00 AS Decimal(10, 2)), 0, N'', N'e11be7ad8b8a3f413bfcc97e3fab286375805589.png', CAST(N'2021-01-01T00:00:00.000' AS DateTime), 1, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2021-04-24T06:26:39.000' AS DateTime), CAST(N'2021-04-24T06:23:21.000' AS DateTime), CAST(N'2021-04-24T06:30:03.000' AS DateTime), 1, 1, 0, 0, 0, 1)
INSERT [dbo].[users] ([id], [company_id], [name], [email], [token], [salt], [address], [phone_number], [hourly_rate], [can_access_invoices_estimates], [notes], [avatar_file], [created_at], [created_by_id], [updated_at], [last_login], [last_visit], [last_activity], [is_active], [is_admin], [is_trashed], [trashed_by_id], [is_group_trashed], [target_source_id]) VALUES (5, 4, N'test user', N'admin@ps.com', N'98a43ab4a9e1125819de1e35113369aff7dedeeb', N'19beef73bdc95', NULL, NULL, CAST(15.00 AS Decimal(10, 2)), 0, NULL, NULL, CAST(N'2021-01-01T00:00:00.000' AS DateTime), NULL, CAST(N'2021-01-01T00:00:00.000' AS DateTime), CAST(N'2021-04-22T13:59:02.000' AS DateTime), CAST(N'2021-04-22T13:59:02.000' AS DateTime), CAST(N'2021-04-22T14:10:05.000' AS DateTime), 1, 0, 0, 0, 0, 3)
SET IDENTITY_INSERT [dbo].[users] OFF
GO
ALTER TABLE [dbo].[activity_logs] ADD  DEFAULT (NULL) FOR [model]
GO
ALTER TABLE [dbo].[activity_logs] ADD  DEFAULT (NULL) FOR [object_id]
GO
ALTER TABLE [dbo].[activity_logs] ADD  DEFAULT ((0)) FOR [project_id]
GO
ALTER TABLE [dbo].[activity_logs] ADD  DEFAULT (NULL) FOR [action]
GO
ALTER TABLE [dbo].[activity_logs] ADD  DEFAULT (NULL) FOR [raw_data]
GO
ALTER TABLE [dbo].[activity_logs] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[activity_logs] ADD  DEFAULT (NULL) FOR [created_by_id]
GO
ALTER TABLE [dbo].[activity_logs] ADD  DEFAULT ((0)) FOR [is_private]
GO
ALTER TABLE [dbo].[activity_logs] ADD  DEFAULT ((0)) FOR [is_hidden]
GO
ALTER TABLE [dbo].[activity_logs] ADD  DEFAULT ((0)) FOR [target_source_id]
GO
ALTER TABLE [dbo].[announcements] ADD  DEFAULT ('0000-00-00') FOR [start_date]
GO
ALTER TABLE [dbo].[announcements] ADD  DEFAULT ('0000-00-00') FOR [end_date]
GO
ALTER TABLE [dbo].[announcements] ADD  DEFAULT ('all') FOR [share_with]
GO
ALTER TABLE [dbo].[announcements] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[announcements] ADD  DEFAULT ((0)) FOR [target_source_id]
GO
ALTER TABLE [dbo].[aquila_time_zone] ADD  DEFAULT ((0)) FOR [Standard_Bias]
GO
ALTER TABLE [dbo].[aquila_time_zone] ADD  DEFAULT ((0)) FOR [Standard_Month]
GO
ALTER TABLE [dbo].[aquila_time_zone] ADD  DEFAULT ((0)) FOR [Standard_Day]
GO
ALTER TABLE [dbo].[companies] ADD  DEFAULT (NULL) FOR [parent_id]
GO
ALTER TABLE [dbo].[companies] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[companies] ADD  DEFAULT (NULL) FOR [address]
GO
ALTER TABLE [dbo].[companies] ADD  DEFAULT (NULL) FOR [vat_no]
GO
ALTER TABLE [dbo].[companies] ADD  DEFAULT (NULL) FOR [phone_number]
GO
ALTER TABLE [dbo].[companies] ADD  DEFAULT (NULL) FOR [logo_file]
GO
ALTER TABLE [dbo].[companies] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[companies] ADD  DEFAULT (NULL) FOR [created_by_id]
GO
ALTER TABLE [dbo].[companies] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[companies] ADD  DEFAULT ((1)) FOR [is_active]
GO
ALTER TABLE [dbo].[companies] ADD  DEFAULT ((0)) FOR [is_trashed]
GO
ALTER TABLE [dbo].[companies] ADD  DEFAULT ((0)) FOR [trashed_by_id]
GO
ALTER TABLE [dbo].[companies] ADD  DEFAULT ((0)) FOR [target_source_id]
GO
ALTER TABLE [dbo].[configurations] ADD  DEFAULT ('') FOR [category_name]
GO
ALTER TABLE [dbo].[configurations] ADD  DEFAULT ('') FOR [name]
GO
ALTER TABLE [dbo].[configurations] ADD  DEFAULT (NULL) FOR [value]
GO
ALTER TABLE [dbo].[configurations] ADD  DEFAULT ((0)) FOR [target_source_id]
GO
ALTER TABLE [dbo].[estimate_items] ADD  DEFAULT ((0)) FOR [o_key]
GO
ALTER TABLE [dbo].[estimate_items] ADD  DEFAULT ((0)) FOR [target_source_id]
GO
ALTER TABLE [dbo].[estimates] ADD  DEFAULT ((0)) FOR [client_id]
GO
ALTER TABLE [dbo].[estimates] ADD  DEFAULT ((0)) FOR [project_id]
GO
ALTER TABLE [dbo].[estimates] ADD  DEFAULT ((0)) FOR [company_id]
GO
ALTER TABLE [dbo].[estimates] ADD  DEFAULT (NULL) FOR [company_name]
GO
ALTER TABLE [dbo].[estimates] ADD  DEFAULT (NULL) FOR [company_address]
GO
ALTER TABLE [dbo].[estimates] ADD  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[estimates] ADD  DEFAULT (getdate()) FOR [due_date]
GO
ALTER TABLE [dbo].[estimates] ADD  DEFAULT ((0.00)) FOR [tax_rate2]
GO
ALTER TABLE [dbo].[estimates] ADD  DEFAULT ((0.00)) FOR [discount_amount]
GO
ALTER TABLE [dbo].[estimates] ADD  DEFAULT (NULL) FOR [note]
GO
ALTER TABLE [dbo].[estimates] ADD  DEFAULT (NULL) FOR [private_note]
GO
ALTER TABLE [dbo].[estimates] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[estimates] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[estimates] ADD  DEFAULT ((0)) FOR [is_online_payment_disabled]
GO
ALTER TABLE [dbo].[estimates] ADD  DEFAULT ((0)) FOR [is_trashed]
GO
ALTER TABLE [dbo].[estimates] ADD  DEFAULT ((0)) FOR [trashed_by_id]
GO
ALTER TABLE [dbo].[estimates] ADD  DEFAULT ((0)) FOR [target_source_id]
GO
ALTER TABLE [dbo].[event_users] ADD  DEFAULT ((0)) FOR [target_source_id]
GO
ALTER TABLE [dbo].[events] ADD  DEFAULT ('') FOR [title]
GO
ALTER TABLE [dbo].[events] ADD  DEFAULT (NULL) FOR [description]
GO
ALTER TABLE [dbo].[events] ADD  DEFAULT (getdate()) FOR [start]
GO
ALTER TABLE [dbo].[events] ADD  DEFAULT (getdate()) FOR [end]
GO
ALTER TABLE [dbo].[events] ADD  DEFAULT (NULL) FOR [classname]
GO
ALTER TABLE [dbo].[events] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[events] ADD  DEFAULT (NULL) FOR [created_by_id]
GO
ALTER TABLE [dbo].[events] ADD  DEFAULT ((0)) FOR [target_source_id]
GO
ALTER TABLE [dbo].[global_labels] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[global_labels] ADD  DEFAULT ((0)) FOR [is_default]
GO
ALTER TABLE [dbo].[global_labels] ADD  DEFAULT ((0)) FOR [is_active]
GO
ALTER TABLE [dbo].[global_labels] ADD  DEFAULT ((0)) FOR [target_source_id]
GO
ALTER TABLE [dbo].[iconfigurations] ADD  DEFAULT ('') FOR [category_name]
GO
ALTER TABLE [dbo].[iconfigurations] ADD  DEFAULT ('') FOR [name]
GO
ALTER TABLE [dbo].[iconfigurations] ADD  DEFAULT (NULL) FOR [value]
GO
ALTER TABLE [dbo].[invoice_items] ADD  DEFAULT ((0)) FOR [o_key]
GO
ALTER TABLE [dbo].[invoice_items] ADD  DEFAULT ((0)) FOR [project_timelog_id]
GO
ALTER TABLE [dbo].[invoice_items] ADD  DEFAULT ((0)) FOR [target_source_id]
GO
ALTER TABLE [dbo].[invoices] ADD  DEFAULT (NULL) FOR [reference]
GO
ALTER TABLE [dbo].[invoices] ADD  DEFAULT ((0)) FOR [client_id]
GO
ALTER TABLE [dbo].[invoices] ADD  DEFAULT ((0)) FOR [project_id]
GO
ALTER TABLE [dbo].[invoices] ADD  DEFAULT ((0)) FOR [company_id]
GO
ALTER TABLE [dbo].[invoices] ADD  DEFAULT (NULL) FOR [company_name]
GO
ALTER TABLE [dbo].[invoices] ADD  DEFAULT (NULL) FOR [company_address]
GO
ALTER TABLE [dbo].[invoices] ADD  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[invoices] ADD  DEFAULT ((0)) FOR [due_after_days]
GO
ALTER TABLE [dbo].[invoices] ADD  DEFAULT ('0000-00-00') FOR [issue_date]
GO
ALTER TABLE [dbo].[invoices] ADD  DEFAULT ('0000-00-00') FOR [due_date]
GO
ALTER TABLE [dbo].[invoices] ADD  DEFAULT ((0.00)) FOR [tax_rate2]
GO
ALTER TABLE [dbo].[invoices] ADD  DEFAULT ((0.00)) FOR [discount_amount]
GO
ALTER TABLE [dbo].[invoices] ADD  DEFAULT (NULL) FOR [note]
GO
ALTER TABLE [dbo].[invoices] ADD  DEFAULT (NULL) FOR [private_note]
GO
ALTER TABLE [dbo].[invoices] ADD  DEFAULT ((0)) FOR [is_recurring]
GO
ALTER TABLE [dbo].[invoices] ADD  DEFAULT ('0000-00-00') FOR [recurring_start_date]
GO
ALTER TABLE [dbo].[invoices] ADD  DEFAULT ((0)) FOR [recurring_invoice_id]
GO
ALTER TABLE [dbo].[invoices] ADD  DEFAULT ((0)) FOR [recurring_value]
GO
ALTER TABLE [dbo].[invoices] ADD  DEFAULT (NULL) FOR [recurring_type]
GO
ALTER TABLE [dbo].[invoices] ADD  DEFAULT (NULL) FOR [no_of_cycles]
GO
ALTER TABLE [dbo].[invoices] ADD  DEFAULT ((0)) FOR [no_of_cycles_completed]
GO
ALTER TABLE [dbo].[invoices] ADD  DEFAULT ('0000-00-00') FOR [due_reminder_date]
GO
ALTER TABLE [dbo].[invoices] ADD  DEFAULT ('0000-00-00') FOR [recurring_reminder_date]
GO
ALTER TABLE [dbo].[invoices] ADD  DEFAULT ('0000-00-00') FOR [next_recurring_date]
GO
ALTER TABLE [dbo].[invoices] ADD  DEFAULT ((0.00)) FOR [discount]
GO
ALTER TABLE [dbo].[invoices] ADD  DEFAULT ((0.00)) FOR [paid_amount]
GO
ALTER TABLE [dbo].[invoices] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[invoices] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[invoices] ADD  DEFAULT ((0)) FOR [is_online_payment_disabled]
GO
ALTER TABLE [dbo].[invoices] ADD  DEFAULT ((0)) FOR [is_cancelled]
GO
ALTER TABLE [dbo].[invoices] ADD  DEFAULT ((0)) FOR [is_trashed]
GO
ALTER TABLE [dbo].[invoices] ADD  DEFAULT ((0)) FOR [trashed_by_id]
GO
ALTER TABLE [dbo].[invoices] ADD  DEFAULT ((0)) FOR [target_source_id]
GO
ALTER TABLE [dbo].[ipackages] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[ipackages] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[ipayment_orders] ADD  DEFAULT ((0)) FOR [is_verified]
GO
ALTER TABLE [dbo].[ipayment_orders] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[ipayment_orders] ADD  DEFAULT ((0)) FOR [target_source_id]
GO
ALTER TABLE [dbo].[ipn_logs] ADD  DEFAULT ((0)) FOR [is_payment_processed]
GO
ALTER TABLE [dbo].[ipn_logs] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[ipn_logs] ADD  DEFAULT ((0)) FOR [target_source_id]
GO
ALTER TABLE [dbo].[iusers] ADD  DEFAULT ('') FOR [token]
GO
ALTER TABLE [dbo].[iusers] ADD  DEFAULT ('') FOR [salt]
GO
ALTER TABLE [dbo].[iusers] ADD  DEFAULT (NULL) FOR [address]
GO
ALTER TABLE [dbo].[iusers] ADD  DEFAULT (NULL) FOR [phone_number]
GO
ALTER TABLE [dbo].[iusers] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[iusers] ADD  DEFAULT (NULL) FOR [created_by_id]
GO
ALTER TABLE [dbo].[iusers] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[iusers] ADD  DEFAULT (getdate()) FOR [last_login]
GO
ALTER TABLE [dbo].[iusers] ADD  DEFAULT (getdate()) FOR [last_visit]
GO
ALTER TABLE [dbo].[iusers] ADD  DEFAULT (getdate()) FOR [last_activity]
GO
ALTER TABLE [dbo].[iusers] ADD  DEFAULT ((1)) FOR [is_active]
GO
ALTER TABLE [dbo].[iusers] ADD  DEFAULT ((0)) FOR [is_super]
GO
ALTER TABLE [dbo].[iwidgets] ADD  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [dbo].[iwidgets] ADD  DEFAULT (NULL) FOR [description]
GO
ALTER TABLE [dbo].[iwidgets] ADD  DEFAULT (NULL) FOR [photo]
GO
ALTER TABLE [dbo].[iwidgets] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[lead_form_element_values] ADD  DEFAULT ((0)) FOR [target_source_id]
GO
ALTER TABLE [dbo].[lead_form_elements] ADD  DEFAULT ((0)) FOR [is_required]
GO
ALTER TABLE [dbo].[lead_form_elements] ADD  DEFAULT ((0)) FOR [target_source_id]
GO
ALTER TABLE [dbo].[lead_forms] ADD  DEFAULT ((0)) FOR [assigned_id]
GO
ALTER TABLE [dbo].[lead_forms] ADD  DEFAULT ((0)) FOR [default_status_id]
GO
ALTER TABLE [dbo].[lead_forms] ADD  DEFAULT ((0)) FOR [default_source_id]
GO
ALTER TABLE [dbo].[lead_forms] ADD  DEFAULT ((1)) FOR [is_collect_userinfo]
GO
ALTER TABLE [dbo].[lead_forms] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[lead_forms] ADD  DEFAULT ((0)) FOR [target_source_id]
GO
ALTER TABLE [dbo].[leads] ADD  DEFAULT ((0)) FOR [project_id]
GO
ALTER TABLE [dbo].[leads] ADD  DEFAULT ((0)) FOR [client_id]
GO
ALTER TABLE [dbo].[leads] ADD  DEFAULT ((0)) FOR [assigned_id]
GO
ALTER TABLE [dbo].[leads] ADD  DEFAULT ((0)) FOR [status_id]
GO
ALTER TABLE [dbo].[leads] ADD  DEFAULT ((0)) FOR [source_id]
GO
ALTER TABLE [dbo].[leads] ADD  DEFAULT ((0)) FOR [form_id]
GO
ALTER TABLE [dbo].[leads] ADD  DEFAULT ((0)) FOR [is_import_lead]
GO
ALTER TABLE [dbo].[leads] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[leads] ADD  DEFAULT ((0)) FOR [target_source_id]
GO
ALTER TABLE [dbo].[leads_sources] ADD  DEFAULT ((0)) FOR [target_source_id]
GO
ALTER TABLE [dbo].[leads_statuses] ADD  DEFAULT ((0)) FOR [target_source_id]
GO
ALTER TABLE [dbo].[project_comments] ADD  DEFAULT (NULL) FOR [text]
GO
ALTER TABLE [dbo].[project_comments] ADD  DEFAULT (NULL) FOR [project_id]
GO
ALTER TABLE [dbo].[project_comments] ADD  DEFAULT (NULL) FOR [parent_type]
GO
ALTER TABLE [dbo].[project_comments] ADD  DEFAULT ((0)) FOR [parent_id]
GO
ALTER TABLE [dbo].[project_comments] ADD  DEFAULT ((0)) FOR [is_private]
GO
ALTER TABLE [dbo].[project_comments] ADD  DEFAULT ((0)) FOR [is_trashed]
GO
ALTER TABLE [dbo].[project_comments] ADD  DEFAULT ((0)) FOR [trashed_by_id]
GO
ALTER TABLE [dbo].[project_comments] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[project_comments] ADD  DEFAULT (NULL) FOR [created_by_id]
GO
ALTER TABLE [dbo].[project_comments] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[project_comments] ADD  DEFAULT ((0)) FOR [target_source_id]
GO
ALTER TABLE [dbo].[project_companies] ADD  DEFAULT ((0)) FOR [project_id]
GO
ALTER TABLE [dbo].[project_companies] ADD  DEFAULT ((0)) FOR [company_id]
GO
ALTER TABLE [dbo].[project_companies] ADD  DEFAULT ((0)) FOR [target_source_id]
GO
ALTER TABLE [dbo].[project_discussions] ADD  DEFAULT (NULL) FOR [project_id]
GO
ALTER TABLE [dbo].[project_discussions] ADD  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [dbo].[project_discussions] ADD  DEFAULT (NULL) FOR [text]
GO
ALTER TABLE [dbo].[project_discussions] ADD  DEFAULT ((0)) FOR [is_private]
GO
ALTER TABLE [dbo].[project_discussions] ADD  DEFAULT ((0)) FOR [is_sticky]
GO
ALTER TABLE [dbo].[project_discussions] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[project_discussions] ADD  DEFAULT (NULL) FOR [created_by_id]
GO
ALTER TABLE [dbo].[project_discussions] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[project_discussions] ADD  DEFAULT ((0)) FOR [is_trashed]
GO
ALTER TABLE [dbo].[project_discussions] ADD  DEFAULT ((0)) FOR [trashed_by_id]
GO
ALTER TABLE [dbo].[project_discussions] ADD  DEFAULT ((0)) FOR [target_source_id]
GO
ALTER TABLE [dbo].[project_files] ADD  DEFAULT (NULL) FOR [project_id]
GO
ALTER TABLE [dbo].[project_files] ADD  DEFAULT (NULL) FOR [parent_type]
GO
ALTER TABLE [dbo].[project_files] ADD  DEFAULT ((0)) FOR [parent_id]
GO
ALTER TABLE [dbo].[project_files] ADD  DEFAULT ((0)) FOR [is_private]
GO
ALTER TABLE [dbo].[project_files] ADD  DEFAULT ((0)) FOR [can_download]
GO
ALTER TABLE [dbo].[project_files] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[project_files] ADD  DEFAULT ((0)) FOR [created_by_id]
GO
ALTER TABLE [dbo].[project_files] ADD  DEFAULT ((0)) FOR [is_trashed]
GO
ALTER TABLE [dbo].[project_files] ADD  DEFAULT ((0)) FOR [trashed_by_id]
GO
ALTER TABLE [dbo].[project_files] ADD  DEFAULT ((0)) FOR [target_source_id]
GO
ALTER TABLE [dbo].[project_notes] ADD  DEFAULT (NULL) FOR [description]
GO
ALTER TABLE [dbo].[project_notes] ADD  DEFAULT ((0)) FOR [project_id]
GO
ALTER TABLE [dbo].[project_notes] ADD  DEFAULT ((0)) FOR [target_source_id]
GO
ALTER TABLE [dbo].[project_task_lists] ADD  DEFAULT (NULL) FOR [project_id]
GO
ALTER TABLE [dbo].[project_task_lists] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[project_task_lists] ADD  DEFAULT (NULL) FOR [description]
GO
ALTER TABLE [dbo].[project_task_lists] ADD  DEFAULT ((0)) FOR [is_private]
GO
ALTER TABLE [dbo].[project_task_lists] ADD  DEFAULT ((0)) FOR [is_high_priority]
GO
ALTER TABLE [dbo].[project_task_lists] ADD  DEFAULT ((1)) FOR [sort_order]
GO
ALTER TABLE [dbo].[project_task_lists] ADD  DEFAULT ('0000-00-00') FOR [start_date]
GO
ALTER TABLE [dbo].[project_task_lists] ADD  DEFAULT ('0000-00-00') FOR [due_date]
GO
ALTER TABLE [dbo].[project_task_lists] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[project_task_lists] ADD  DEFAULT ((0)) FOR [created_by_id]
GO
ALTER TABLE [dbo].[project_task_lists] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[project_task_lists] ADD  DEFAULT ((0)) FOR [is_trashed]
GO
ALTER TABLE [dbo].[project_task_lists] ADD  DEFAULT ((0)) FOR [trashed_by_id]
GO
ALTER TABLE [dbo].[project_task_lists] ADD  DEFAULT ((0)) FOR [target_source_id]
GO
ALTER TABLE [dbo].[project_tasks] ADD  DEFAULT (NULL) FOR [description]
GO
ALTER TABLE [dbo].[project_tasks] ADD  DEFAULT (NULL) FOR [project_id]
GO
ALTER TABLE [dbo].[project_tasks] ADD  DEFAULT (NULL) FOR [task_list_id]
GO
ALTER TABLE [dbo].[project_tasks] ADD  DEFAULT (NULL) FOR [assignee_id]
GO
ALTER TABLE [dbo].[project_tasks] ADD  DEFAULT ((0)) FOR [label_id]
GO
ALTER TABLE [dbo].[project_tasks] ADD  DEFAULT ('0000-00-00') FOR [start_date]
GO
ALTER TABLE [dbo].[project_tasks] ADD  DEFAULT ('0000-00-00') FOR [due_date]
GO
ALTER TABLE [dbo].[project_tasks] ADD  DEFAULT ((0)) FOR [is_high_priority]
GO
ALTER TABLE [dbo].[project_tasks] ADD  DEFAULT ((1)) FOR [sort_order]
GO
ALTER TABLE [dbo].[project_tasks] ADD  DEFAULT (getdate()) FOR [completed_at]
GO
ALTER TABLE [dbo].[project_tasks] ADD  DEFAULT (NULL) FOR [completed_by_id]
GO
ALTER TABLE [dbo].[project_tasks] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[project_tasks] ADD  DEFAULT (NULL) FOR [created_by_id]
GO
ALTER TABLE [dbo].[project_tasks] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[project_tasks] ADD  DEFAULT ((0)) FOR [is_trashed]
GO
ALTER TABLE [dbo].[project_tasks] ADD  DEFAULT ((0)) FOR [trashed_by_id]
GO
ALTER TABLE [dbo].[project_tasks] ADD  DEFAULT ((0)) FOR [target_source_id]
GO
ALTER TABLE [dbo].[project_timelogs] ADD  DEFAULT ((0)) FOR [task_id]
GO
ALTER TABLE [dbo].[project_timelogs] ADD  DEFAULT (getdate()) FOR [start_time]
GO
ALTER TABLE [dbo].[project_timelogs] ADD  DEFAULT (getdate()) FOR [end_time]
GO
ALTER TABLE [dbo].[project_timelogs] ADD  DEFAULT ((0.00)) FOR [total_hours]
GO
ALTER TABLE [dbo].[project_timelogs] ADD  DEFAULT ((10.00)) FOR [hourly_rate]
GO
ALTER TABLE [dbo].[project_timelogs] ADD  DEFAULT ((1)) FOR [is_approved]
GO
ALTER TABLE [dbo].[project_timelogs] ADD  DEFAULT ((0)) FOR [is_timer]
GO
ALTER TABLE [dbo].[project_timelogs] ADD  DEFAULT ((0)) FOR [is_timer_started]
GO
ALTER TABLE [dbo].[project_timelogs] ADD  DEFAULT ((0)) FOR [is_billable]
GO
ALTER TABLE [dbo].[project_timelogs] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[project_timelogs] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[project_timelogs] ADD  DEFAULT ((0)) FOR [is_trashed]
GO
ALTER TABLE [dbo].[project_timelogs] ADD  DEFAULT ((0)) FOR [trashed_by_id]
GO
ALTER TABLE [dbo].[project_timelogs] ADD  DEFAULT ((0)) FOR [target_source_id]
GO
ALTER TABLE [dbo].[project_users] ADD  DEFAULT ((0)) FOR [target_source_id]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT ((0)) FOR [company_id]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT ((0)) FOR [label_id]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT (NULL) FOR [description]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT ((0)) FOR [is_featured]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT ((0)) FOR [is_enable_timelog]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT ((0)) FOR [is_timelog_visible]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT ('0000-00-00') FOR [start_date]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT ('0000-00-00') FOR [due_date]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT (getdate()) FOR [completed_at]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT (NULL) FOR [completed_by_id]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT (NULL) FOR [created_by_id]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT ((0)) FOR [is_trashed]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT ((0)) FOR [target_source_id]
GO
ALTER TABLE [dbo].[searchable_objects] ADD  DEFAULT ('') FOR [model]
GO
ALTER TABLE [dbo].[searchable_objects] ADD  DEFAULT ((0)) FOR [object_id]
GO
ALTER TABLE [dbo].[searchable_objects] ADD  DEFAULT ('') FOR [field_name]
GO
ALTER TABLE [dbo].[searchable_objects] ADD  DEFAULT ((0)) FOR [project_id]
GO
ALTER TABLE [dbo].[searchable_objects] ADD  DEFAULT ((0)) FOR [is_private]
GO
ALTER TABLE [dbo].[searchable_objects] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[searchable_objects] ADD  DEFAULT ((0)) FOR [target_source_id]
GO
ALTER TABLE [dbo].[subscriptions] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[subscriptions] ADD  DEFAULT ((0)) FOR [target_source_id]
GO
ALTER TABLE [dbo].[target_sources] ADD  DEFAULT ((1)) FOR [is_active]
GO
ALTER TABLE [dbo].[target_sources] ADD  DEFAULT ('0000-00-00') FOR [expire_date]
GO
ALTER TABLE [dbo].[target_sources] ADD  DEFAULT ((0)) FOR [storage_used]
GO
ALTER TABLE [dbo].[target_sources] ADD  DEFAULT ((0.00)) FOR [storage_limit]
GO
ALTER TABLE [dbo].[target_sources] ADD  DEFAULT ((0)) FOR [projects_created]
GO
ALTER TABLE [dbo].[target_sources] ADD  DEFAULT ((1)) FOR [users_created]
GO
ALTER TABLE [dbo].[target_sources] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[target_sources] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[ticket_types] ADD  DEFAULT ((1)) FOR [is_active]
GO
ALTER TABLE [dbo].[ticket_types] ADD  DEFAULT ((0)) FOR [target_source_id]
GO
ALTER TABLE [dbo].[tickets] ADD  DEFAULT ((0)) FOR [project_id]
GO
ALTER TABLE [dbo].[tickets] ADD  DEFAULT ((0)) FOR [type_id]
GO
ALTER TABLE [dbo].[tickets] ADD  DEFAULT ((0)) FOR [label_id]
GO
ALTER TABLE [dbo].[tickets] ADD  DEFAULT (NULL) FOR [assignee_id]
GO
ALTER TABLE [dbo].[tickets] ADD  DEFAULT ('low') FOR [priority]
GO
ALTER TABLE [dbo].[tickets] ADD  DEFAULT ((1)) FOR [is_open]
GO
ALTER TABLE [dbo].[tickets] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[tickets] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[tickets] ADD  DEFAULT ((0)) FOR [is_trashed]
GO
ALTER TABLE [dbo].[tickets] ADD  DEFAULT ((0)) FOR [trashed_by_id]
GO
ALTER TABLE [dbo].[tickets] ADD  DEFAULT ((0)) FOR [target_source_id]
GO
ALTER TABLE [dbo].[transaction_logs] ADD  DEFAULT ((0)) FOR [reference_id]
GO
ALTER TABLE [dbo].[transaction_logs] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[transaction_logs] ADD  DEFAULT ((0)) FOR [target_source_id]
GO
ALTER TABLE [dbo].[user_notifications] ADD  DEFAULT ((0)) FOR [is_read]
GO
ALTER TABLE [dbo].[user_notifications] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[user_notifications] ADD  DEFAULT ((0)) FOR [target_source_id]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [company_id]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ('') FOR [token]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ('') FOR [salt]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [address]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [phone_number]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((15.00)) FOR [hourly_rate]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [can_access_invoices_estimates]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [notes]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [avatar_file]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (getdate()) FOR [created_at]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [created_by_id]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (getdate()) FOR [updated_at]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (getdate()) FOR [last_login]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (getdate()) FOR [last_visit]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (getdate()) FOR [last_activity]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((1)) FOR [is_active]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [is_admin]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [is_trashed]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [trashed_by_id]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [is_group_trashed]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [target_source_id]
GO
