-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 17, 2025 at 06:06 AM
-- Server version: 10.11.10-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u566678882_hubuhu`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_settings`
--

CREATE TABLE `admin_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `update_length` int(10) UNSIGNED NOT NULL COMMENT 'The max length of updates',
  `status_page` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 Offline, 1 Online',
  `email_verification` enum('0','1') NOT NULL COMMENT '0 Off, 1 On',
  `email_no_reply` varchar(200) NOT NULL,
  `email_admin` varchar(200) NOT NULL,
  `captcha` enum('on','off') NOT NULL DEFAULT 'on',
  `file_size_allowed` int(10) UNSIGNED NOT NULL COMMENT 'Size in Bytes',
  `google_analytics` text NOT NULL,
  `paypal_account` varchar(200) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `pinterest` varchar(200) NOT NULL,
  `instagram` varchar(200) NOT NULL,
  `google_adsense` text NOT NULL,
  `currency_symbol` char(10) NOT NULL,
  `currency_code` varchar(20) NOT NULL,
  `min_subscription_amount` int(10) UNSIGNED NOT NULL,
  `payment_gateway` enum('PayPal','Stripe') NOT NULL DEFAULT 'PayPal',
  `min_width_height_image` varchar(100) NOT NULL,
  `fee_commission` int(10) UNSIGNED NOT NULL,
  `max_subscription_amount` int(10) UNSIGNED NOT NULL,
  `date_format` varchar(200) NOT NULL,
  `link_privacy` varchar(200) NOT NULL,
  `link_terms` varchar(200) NOT NULL,
  `currency_position` varchar(100) NOT NULL DEFAULT 'left',
  `facebook_login` enum('on','off') NOT NULL DEFAULT 'off',
  `amount_min_withdrawal` int(10) UNSIGNED NOT NULL,
  `youtube` varchar(200) NOT NULL,
  `github` varchar(200) NOT NULL,
  `comment_length` int(10) UNSIGNED NOT NULL,
  `days_process_withdrawals` int(10) UNSIGNED NOT NULL,
  `google_login` enum('on','off') NOT NULL DEFAULT 'off',
  `number_posts_show` tinyint(3) UNSIGNED NOT NULL,
  `number_comments_show` tinyint(3) UNSIGNED NOT NULL,
  `registration_active` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 No, 1 Yes',
  `account_verification` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 No, 1 Yes',
  `logo` varchar(100) NOT NULL,
  `logo_2` varchar(100) NOT NULL,
  `favicon` varchar(100) NOT NULL,
  `home_index` varchar(100) NOT NULL,
  `bg_gradient` varchar(100) NOT NULL,
  `img_1` varchar(100) NOT NULL,
  `img_2` varchar(100) NOT NULL,
  `img_3` varchar(100) NOT NULL,
  `img_4` varchar(100) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `show_counter` enum('on','off') NOT NULL DEFAULT 'on',
  `color_default` varchar(100) NOT NULL,
  `decimal_format` enum('comma','dot') NOT NULL DEFAULT 'dot',
  `version` varchar(5) NOT NULL,
  `link_cookies` varchar(200) NOT NULL,
  `story_length` int(10) UNSIGNED NOT NULL,
  `maintenance_mode` enum('on','off') NOT NULL DEFAULT 'off',
  `company` varchar(100) NOT NULL,
  `country` varchar(255) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `zip` varchar(100) NOT NULL,
  `vat` varchar(100) NOT NULL,
  `widget_creators_featured` enum('on','off') NOT NULL DEFAULT 'on',
  `home_style` int(10) UNSIGNED NOT NULL,
  `file_size_allowed_verify_account` int(10) UNSIGNED NOT NULL,
  `payout_method_paypal` enum('on','off') NOT NULL DEFAULT 'on',
  `payout_method_bank` enum('on','off') NOT NULL DEFAULT 'on',
  `min_tip_amount` int(10) UNSIGNED NOT NULL,
  `max_tip_amount` int(10) UNSIGNED NOT NULL,
  `min_ppv_amount` int(10) UNSIGNED NOT NULL,
  `max_ppv_amount` int(10) UNSIGNED NOT NULL,
  `min_deposits_amount` int(10) UNSIGNED NOT NULL,
  `max_deposits_amount` int(10) UNSIGNED NOT NULL,
  `button_style` enum('rounded','normal') NOT NULL DEFAULT 'rounded',
  `twitter_login` enum('on','off') NOT NULL DEFAULT 'off',
  `hide_admin_profile` enum('on','off') NOT NULL DEFAULT 'off',
  `requests_verify_account` enum('on','off') NOT NULL DEFAULT 'on',
  `navbar_background_color` varchar(30) NOT NULL,
  `navbar_text_color` varchar(30) NOT NULL,
  `footer_background_color` varchar(30) NOT NULL,
  `footer_text_color` varchar(30) NOT NULL,
  `preloading` enum('on','off') NOT NULL DEFAULT 'off',
  `preloading_image` varchar(100) NOT NULL,
  `watermark` enum('on','off') NOT NULL DEFAULT 'on',
  `earnings_simulator` enum('on','off') NOT NULL DEFAULT 'on',
  `custom_css` text NOT NULL,
  `custom_js` text NOT NULL,
  `alert_adult` enum('on','off') NOT NULL DEFAULT 'off',
  `genders` varchar(250) NOT NULL,
  `cover_default` varchar(100) NOT NULL,
  `who_can_see_content` enum('all','users') NOT NULL DEFAULT 'all',
  `users_can_edit_post` enum('on','off') NOT NULL DEFAULT 'on',
  `disable_wallet` enum('on','off') NOT NULL DEFAULT 'on',
  `disable_banner_cookies` enum('on','off') NOT NULL DEFAULT 'off',
  `wallet_format` enum('real_money','credits','points','tokens') NOT NULL DEFAULT 'real_money',
  `maximum_files_post` int(10) UNSIGNED NOT NULL DEFAULT 5,
  `maximum_files_msg` int(10) UNSIGNED NOT NULL DEFAULT 5,
  `announcement` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `announcement_show` varchar(100) NOT NULL,
  `announcement_cookie` varchar(20) NOT NULL,
  `limit_categories` int(10) UNSIGNED NOT NULL DEFAULT 3,
  `captcha_contact` enum('on','off') NOT NULL DEFAULT 'on',
  `disable_tips` enum('on','off') NOT NULL DEFAULT 'off',
  `payout_method_payoneer` enum('on','off') NOT NULL DEFAULT 'off',
  `payout_method_zelle` enum('on','off') NOT NULL DEFAULT 'off',
  `type_announcement` char(10) NOT NULL DEFAULT 'primary',
  `referral_system` enum('on','off') NOT NULL DEFAULT 'off',
  `auto_approve_post` enum('on','off') NOT NULL DEFAULT 'on',
  `watermark_on_videos` enum('on','off') NOT NULL DEFAULT 'on',
  `percentage_referred` int(10) UNSIGNED NOT NULL DEFAULT 5,
  `referral_transaction_limit` char(10) NOT NULL DEFAULT '1',
  `video_encoding` enum('on','off') NOT NULL DEFAULT 'off',
  `live_streaming_status` enum('on','off') NOT NULL DEFAULT 'off',
  `live_streaming_minimum_price` int(10) UNSIGNED NOT NULL DEFAULT 5,
  `live_streaming_max_price` int(10) UNSIGNED NOT NULL DEFAULT 100,
  `agora_app_id` varchar(200) NOT NULL,
  `tiktok` varchar(200) NOT NULL,
  `snapchat` varchar(200) NOT NULL,
  `limit_live_streaming_paid` int(10) UNSIGNED NOT NULL,
  `limit_live_streaming_free` int(10) UNSIGNED NOT NULL,
  `live_streaming_free` enum('0','1') NOT NULL DEFAULT '0',
  `type_withdrawals` char(50) NOT NULL DEFAULT 'custom',
  `shop` tinyint(1) NOT NULL DEFAULT 0,
  `min_price_product` int(10) UNSIGNED NOT NULL DEFAULT 5,
  `max_price_product` int(10) UNSIGNED NOT NULL DEFAULT 100,
  `digital_product_sale` tinyint(1) NOT NULL DEFAULT 0,
  `custom_content` tinyint(1) NOT NULL DEFAULT 0,
  `tax_on_wallet` tinyint(1) NOT NULL DEFAULT 1,
  `stripe_connect` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `stripe_connect_countries` longtext NOT NULL,
  `physical_products` tinyint(1) NOT NULL DEFAULT 0,
  `disable_login_register_email` tinyint(1) NOT NULL DEFAULT 0,
  `disable_contact` tinyint(1) NOT NULL DEFAULT 0,
  `specific_day_payment_withdrawals` int(10) UNSIGNED NOT NULL,
  `disable_new_post_notification` tinyint(1) NOT NULL DEFAULT 0,
  `disable_search_creators` tinyint(1) NOT NULL DEFAULT 0,
  `search_creators_genders` tinyint(1) NOT NULL DEFAULT 0,
  `generate_qr_code` tinyint(1) NOT NULL DEFAULT 0,
  `autofollow_admin` tinyint(1) NOT NULL DEFAULT 0,
  `allow_zip_files` tinyint(1) NOT NULL DEFAULT 1,
  `reddit` varchar(200) NOT NULL,
  `telegram` varchar(200) NOT NULL,
  `linkedin` varchar(200) NOT NULL,
  `push_notification_status` tinyint(1) NOT NULL DEFAULT 0,
  `onesignal_appid` varchar(150) NOT NULL,
  `onesignal_restapi` varchar(150) NOT NULL,
  `status_pwa` tinyint(1) NOT NULL DEFAULT 1,
  `zip_verification_creator` tinyint(1) NOT NULL DEFAULT 1,
  `amount_max_withdrawal` int(10) UNSIGNED NOT NULL,
  `story_status` tinyint(1) NOT NULL DEFAULT 0,
  `story_image` tinyint(1) NOT NULL DEFAULT 1,
  `story_text` tinyint(1) NOT NULL DEFAULT 1,
  `story_max_videos_length` int(10) UNSIGNED NOT NULL DEFAULT 30,
  `payout_method_western_union` enum('on','off') NOT NULL DEFAULT 'off',
  `payout_method_crypto` enum('on','off') NOT NULL DEFAULT 'off',
  `threads` varchar(200) NOT NULL,
  `watermak_video` varchar(100) NOT NULL,
  `coconut_key` varchar(255) NOT NULL,
  `encoding_method` varchar(255) NOT NULL DEFAULT 'ffmpeg',
  `allow_scheduled_posts` tinyint(1) DEFAULT 0,
  `google_tag_manager_head` text NOT NULL,
  `google_tag_manager_body` text NOT NULL,
  `live_streaming_private` enum('on','off') NOT NULL DEFAULT 'off',
  `live_streaming_minimum_price_private` decimal(10,2) DEFAULT NULL,
  `live_streaming_max_price_private` decimal(10,2) DEFAULT NULL,
  `limit_live_streaming_private` int(10) UNSIGNED NOT NULL,
  `show_address_company_footer` tinyint(1) DEFAULT 0,
  `watermark_position` varchar(50) NOT NULL DEFAULT 'center',
  `coconut_region` varchar(100) NOT NULL DEFAULT 'Virginia',
  `payout_method_mercadopago` enum('on','off') NOT NULL DEFAULT 'off',
  `theme` enum('light','dark') NOT NULL DEFAULT 'light',
  `allow_creators_deactivate_profile` tinyint(1) NOT NULL DEFAULT 0,
  `allow_epub_files` tinyint(1) NOT NULL DEFAULT 0,
  `gifts` tinyint(1) NOT NULL DEFAULT 0,
  `disable_free_post` tinyint(1) NOT NULL DEFAULT 0,
  `disable_explore_section` tinyint(1) NOT NULL DEFAULT 0,
  `disable_creators_section` tinyint(1) NOT NULL DEFAULT 0,
  `phone` varchar(100) DEFAULT NULL,
  `ppv_rate` decimal(10,0) DEFAULT NULL,
  `admin_commission` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `admin_settings`
--

INSERT INTO `admin_settings` (`id`, `title`, `description`, `keywords`, `update_length`, `status_page`, `email_verification`, `email_no_reply`, `email_admin`, `captcha`, `file_size_allowed`, `google_analytics`, `paypal_account`, `twitter`, `facebook`, `pinterest`, `instagram`, `google_adsense`, `currency_symbol`, `currency_code`, `min_subscription_amount`, `payment_gateway`, `min_width_height_image`, `fee_commission`, `max_subscription_amount`, `date_format`, `link_privacy`, `link_terms`, `currency_position`, `facebook_login`, `amount_min_withdrawal`, `youtube`, `github`, `comment_length`, `days_process_withdrawals`, `google_login`, `number_posts_show`, `number_comments_show`, `registration_active`, `account_verification`, `logo`, `logo_2`, `favicon`, `home_index`, `bg_gradient`, `img_1`, `img_2`, `img_3`, `img_4`, `avatar`, `show_counter`, `color_default`, `decimal_format`, `version`, `link_cookies`, `story_length`, `maintenance_mode`, `company`, `country`, `address`, `city`, `zip`, `vat`, `widget_creators_featured`, `home_style`, `file_size_allowed_verify_account`, `payout_method_paypal`, `payout_method_bank`, `min_tip_amount`, `max_tip_amount`, `min_ppv_amount`, `max_ppv_amount`, `min_deposits_amount`, `max_deposits_amount`, `button_style`, `twitter_login`, `hide_admin_profile`, `requests_verify_account`, `navbar_background_color`, `navbar_text_color`, `footer_background_color`, `footer_text_color`, `preloading`, `preloading_image`, `watermark`, `earnings_simulator`, `custom_css`, `custom_js`, `alert_adult`, `genders`, `cover_default`, `who_can_see_content`, `users_can_edit_post`, `disable_wallet`, `disable_banner_cookies`, `wallet_format`, `maximum_files_post`, `maximum_files_msg`, `announcement`, `announcement_show`, `announcement_cookie`, `limit_categories`, `captcha_contact`, `disable_tips`, `payout_method_payoneer`, `payout_method_zelle`, `type_announcement`, `referral_system`, `auto_approve_post`, `watermark_on_videos`, `percentage_referred`, `referral_transaction_limit`, `video_encoding`, `live_streaming_status`, `live_streaming_minimum_price`, `live_streaming_max_price`, `agora_app_id`, `tiktok`, `snapchat`, `limit_live_streaming_paid`, `limit_live_streaming_free`, `live_streaming_free`, `type_withdrawals`, `shop`, `min_price_product`, `max_price_product`, `digital_product_sale`, `custom_content`, `tax_on_wallet`, `stripe_connect`, `stripe_connect_countries`, `physical_products`, `disable_login_register_email`, `disable_contact`, `specific_day_payment_withdrawals`, `disable_new_post_notification`, `disable_search_creators`, `search_creators_genders`, `generate_qr_code`, `autofollow_admin`, `allow_zip_files`, `reddit`, `telegram`, `linkedin`, `push_notification_status`, `onesignal_appid`, `onesignal_restapi`, `status_pwa`, `zip_verification_creator`, `amount_max_withdrawal`, `story_status`, `story_image`, `story_text`, `story_max_videos_length`, `payout_method_western_union`, `payout_method_crypto`, `threads`, `watermak_video`, `coconut_key`, `encoding_method`, `allow_scheduled_posts`, `google_tag_manager_head`, `google_tag_manager_body`, `live_streaming_private`, `live_streaming_minimum_price_private`, `live_streaming_max_price_private`, `limit_live_streaming_private`, `show_address_company_footer`, `watermark_position`, `coconut_region`, `payout_method_mercadopago`, `theme`, `allow_creators_deactivate_profile`, `allow_epub_files`, `gifts`, `disable_free_post`, `disable_explore_section`, `disable_creators_section`, `phone`, `ppv_rate`, `admin_commission`) VALUES
(1, 'Hubuhu', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ut tortor rutrum massa efficitur tincidunt vel nec lacus. Curabitur porta aliquet diam, eu gravida neque lacinia.', 'donations,support,creators,Creaty,subscription', 250, '1', '', 'no-reply@hubuhu.com', 'admin@hubuhu.com', 'off', 5120, '', 'paypal@yousite.com', '', '', '', '', '', '৳', 'BDT', 2, 'PayPal', '400', 5, 100, 'd/m/Y', 'https://hubuhu.com/p/privacy', 'https://hubuhu.com/p/terms-of-service', 'left', '', 1000, '', '', 150, 1, '', 5, 2, '1', '1', 'logo-1744124382.png', 'logo_2-1744124382.png', 'favicon-1749756330.png', 'home_index-1749593490.jpg', 'bg-gradient.jpg', 'img_1.svg', 'img_2.svg', 'img_3.svg', 'img_4.png', 'default.jpg', 'off', '#00abff', 'dot', '5.8', 'https://hubuhu.com/p/cookies', 500, 'on', '', '', '', '', '', '', 'on', 1, 5120, 'off', 'on', 20, 1000, 5, 100, 10, 2000, 'rounded', '', 'on', 'off', '#ffffff', '#3a3a3a', '#ffffff', '#5f5f5f', 'off', '', 'off', 'off', '.col-md-3{padding-left:30px;padding-right:30px;}\r\n.max-w-100 {max-width: 40px;}\r\n.form-text{margin-top:0.8rem; text-align:center;font-size:0.875rem}\r\nbody{background:#f2f4f7;}\r\n.mb-1 {margin-bottom: 1rem !important;}\r\n.pb-3, .py-3 {padding-bottom: 3rem !important;}\r\n@media (min-width: 992px) {\r\n    .pl-lg-5, .px-lg-5 {padding: 2rem !important;}\r\n#no-stream-msg{width:400px;margin:auto;}}\r\n@media (max-width: 640px) {\r\n    .py-5 {padding-top: 8rem !important;}}', '', 'off', 'male,female', '', 'users', 'off', 'off', 'off', 'real_money', 5, 5, '', 'all', 'V1rVk3oMdLD41dbZhtyp', 3, 'off', 'off', 'off', 'off', 'primary', 'on', 'off', 'on', 5, '1', 'off', 'on', 20, 45, '971312c402a4400699959e9ab790162c', '', '', 30, 30, '', 'balance', 0, 5, 100, 0, 0, 1, 0, '', 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, '', '', '', 0, '', '', 1, 0, 0, 0, 1, 1, 30, 'off', 'off', '', 'watermak_video-1749937740.png', '', 'ffmpeg', NULL, '', '', '', 1.00, 5.00, 60, 0, 'center', 'Virginia', 'off', 'light', 0, 0, 0, 1, 1, 1, NULL, 100, 10);

-- --------------------------------------------------------

--
-- Table structure for table `advertisings`
--

CREATE TABLE `advertisings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `business_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `address_range` varchar(255) DEFAULT NULL,
  `goal` varchar(255) DEFAULT NULL,
  `goal_description` text DEFAULT NULL,
  `ad_file` text DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `whatsapp_number` varchar(255) DEFAULT NULL,
  `visit_now` text DEFAULT NULL,
  `send_message` text DEFAULT NULL,
  `buy_now` text DEFAULT NULL,
  `order_now` text DEFAULT NULL,
  `start_now` text DEFAULT NULL,
  `install_now` text DEFAULT NULL,
  `learn_more` text DEFAULT NULL,
  `description` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `image` varchar(150) NOT NULL,
  `clicks` int(10) UNSIGNED NOT NULL,
  `impressions` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `ad_status` enum('active','inactive') NOT NULL,
  `expired_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertisings`
--

INSERT INTO `advertisings` (`id`, `user_id`, `business_id`, `title`, `address`, `city`, `country`, `address_range`, `goal`, `goal_description`, `ad_file`, `price`, `whatsapp_number`, `visit_now`, `send_message`, `buy_now`, `order_now`, `start_now`, `install_now`, `learn_more`, `description`, `url`, `image`, `clicks`, `impressions`, `status`, `ad_status`, `expired_at`, `created_at`, `updated_at`) VALUES
(9, 26, 1, 'test', 'dhaka', NULL, NULL, '3', 'visit_now', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'uploads/ads/1751038679_511294311_1432650427974113_6649768706477685369_n.jpg', '20', '', 'https://google.com', '', '', '', '', '', '', '', '', '', 0, 146, 1, 'active', NULL, '2025-06-27 15:37:59', '2025-07-17 04:07:14'),
(10, 26, 1, 'Hi', 'dhaka', NULL, NULL, '3', 'chat_on_whatsapp', 'This is hello', 'uploads/ads/1751151427_download.jpeg', '20', '1626364640', '', '', '', '', '', '', '', '', '', '', 0, 144, 1, 'active', NULL, '2025-06-28 22:57:07', '2025-07-17 04:07:12'),
(11, 26, 1, 'this is video ad', 'Jamalpur, Bangladesh', NULL, NULL, '3', 'install_now', 'this is test', 'uploads/ads/fun.mp4', '20', '', '', '', '', '', '', 'https://google.com', '', '', '', '', 1, 158, 1, 'active', NULL, '2025-07-01 15:35:47', '2025-07-17 04:07:12'),
(12, 26, 1, 'Jamalpur adt', 'Jamalpur, Bangladesh', NULL, NULL, '3', 'send_message', 'This is test qgain', 'uploads/ads/1751752403_images (1).jpeg', '200', '', '', 'Hi', '', '', '', '', '', '', '', '', 1, 284, 1, 'active', NULL, '2025-07-05 21:53:23', '2025-07-17 04:07:13');

-- --------------------------------------------------------

--
-- Table structure for table `ad_click_impressions`
--

CREATE TABLE `ad_click_impressions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `advertisings_id` bigint(20) UNSIGNED NOT NULL,
  `type` char(20) NOT NULL,
  `ip` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ad_click_impressions`
--

INSERT INTO `ad_click_impressions` (`id`, `advertisings_id`, `type`, `ip`, `created_at`, `updated_at`) VALUES
(1, 1, 'impression', '103.179.247.207', '2025-04-11 23:28:17', '2025-04-11 23:28:17'),
(2, 1, 'impression', '103.240.161.167', '2025-04-12 15:54:25', '2025-04-12 15:54:25'),
(3, 1, 'click', '103.240.161.167', '2025-04-12 15:54:45', '2025-04-12 15:54:45'),
(4, 1, 'impression', '223.123.91.179', '2025-04-12 18:06:29', '2025-04-12 18:06:29'),
(5, 1, 'impression', '223.123.94.16', '2025-04-12 19:44:17', '2025-04-12 19:44:17'),
(6, 1, 'impression', '103.161.106.47', '2025-04-12 20:32:45', '2025-04-12 20:32:45'),
(7, 1, 'impression', '103.161.106.125', '2025-04-12 22:30:02', '2025-04-12 22:30:02'),
(8, 1, 'impression', '103.161.106.2', '2025-04-12 22:43:44', '2025-04-12 22:43:44'),
(9, 1, 'impression', '103.161.106.95', '2025-04-13 01:08:52', '2025-04-13 01:08:52'),
(10, 1, 'impression', '154.198.93.63', '2025-04-13 01:10:04', '2025-04-13 01:10:04'),
(11, 1, 'impression', '116.71.180.66', '2025-04-13 09:21:37', '2025-04-13 09:21:37'),
(12, 1, 'impression', '117.102.49.4', '2025-04-13 09:21:54', '2025-04-13 09:21:54'),
(13, 1, 'click', '116.71.180.66', '2025-04-13 09:40:36', '2025-04-13 09:40:36'),
(14, 1, 'impression', '58.27.200.201', '2025-04-13 09:43:41', '2025-04-13 09:43:41'),
(15, 3, 'impression', '::1', '2025-06-20 06:48:06', '2025-06-20 06:48:06');

-- --------------------------------------------------------

--
-- Table structure for table `ad_views`
--

CREATE TABLE `ad_views` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ad_id` int(11) NOT NULL,
  `watched_seconds` int(11) NOT NULL,
  `viewed_at` date NOT NULL DEFAULT current_timestamp(),
  `earned` decimal(10,2) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ad_views`
--

INSERT INTO `ad_views` (`id`, `user_id`, `ad_id`, `watched_seconds`, `viewed_at`, `earned`, `created_at`, `updated_at`) VALUES
(1, 26, 12, 0, '2025-07-06', 0.00, '2025-07-06 16:06:14', '2025-07-06 16:06:14'),
(2, 26, 11, 0, '2025-07-06', 0.00, '2025-07-06 16:26:07', '2025-07-06 16:26:07'),
(3, 26, 10, 0, '2025-07-06', 0.00, '2025-07-06 16:36:27', '2025-07-06 16:36:27'),
(4, 26, 9, 0, '2025-07-06', 0.00, '2025-07-06 16:36:34', '2025-07-06 16:36:34'),
(5, 26, 12, 0, '2025-07-07', 0.00, '2025-07-07 06:34:14', '2025-07-07 06:34:14'),
(6, 26, 11, 0, '2025-07-07', 0.00, '2025-07-07 06:34:21', '2025-07-07 06:34:21'),
(7, 26, 9, 0, '2025-07-07', 0.00, '2025-07-07 06:34:27', '2025-07-07 06:34:27'),
(8, 26, 10, 0, '2025-07-07', 0.00, '2025-07-07 06:34:29', '2025-07-07 06:34:29'),
(9, 26, 12, 0, '2025-07-08', 0.00, '2025-07-08 10:26:26', '2025-07-08 10:26:26'),
(10, 26, 9, 0, '2025-07-08', 0.00, '2025-07-08 10:26:33', '2025-07-08 10:26:33'),
(11, 26, 10, 0, '2025-07-08', 0.00, '2025-07-08 10:26:34', '2025-07-08 10:26:34'),
(12, 26, 11, 0, '2025-07-08', 0.00, '2025-07-08 10:26:41', '2025-07-08 10:26:41'),
(13, 26, 12, 0, '2025-07-09', 0.00, '2025-07-09 10:59:02', '2025-07-09 10:59:02'),
(14, 26, 9, 0, '2025-07-09', 0.00, '2025-07-09 12:59:21', '2025-07-09 12:59:21'),
(15, 26, 10, 0, '2025-07-09', 0.00, '2025-07-09 12:59:25', '2025-07-09 12:59:25'),
(16, 26, 11, 0, '2025-07-09', 0.00, '2025-07-09 12:59:26', '2025-07-09 12:59:26'),
(17, 26, 12, 0, '2025-07-10', 0.00, '2025-07-10 06:49:46', '2025-07-10 06:49:46'),
(18, 26, 11, 0, '2025-07-10', 0.00, '2025-07-10 06:49:52', '2025-07-10 06:49:52'),
(19, 26, 10, 0, '2025-07-10', 0.00, '2025-07-10 06:49:58', '2025-07-10 06:49:58'),
(20, 26, 9, 0, '2025-07-10', 0.00, '2025-07-10 19:17:01', '2025-07-10 19:17:01'),
(21, 26, 12, 0, '2025-07-11', 0.00, '2025-07-11 06:01:59', '2025-07-11 06:01:59'),
(22, 26, 11, 0, '2025-07-11', 0.00, '2025-07-11 16:51:18', '2025-07-11 16:51:18'),
(23, 26, 9, 0, '2025-07-11', 0.00, '2025-07-11 16:51:24', '2025-07-11 16:51:24'),
(24, 26, 10, 0, '2025-07-11', 0.00, '2025-07-11 16:51:27', '2025-07-11 16:51:27'),
(25, 26, 12, 0, '2025-07-12', 0.00, '2025-07-12 06:21:12', '2025-07-12 06:21:12'),
(26, 26, 9, 0, '2025-07-12', 0.00, '2025-07-12 06:21:23', '2025-07-12 06:21:23'),
(27, 26, 10, 0, '2025-07-12', 0.00, '2025-07-12 06:21:24', '2025-07-12 06:21:24'),
(28, 26, 11, 0, '2025-07-12', 0.00, '2025-07-12 06:21:25', '2025-07-12 06:21:25'),
(29, 26, 12, 0, '2025-07-14', 0.00, '2025-07-14 08:26:46', '2025-07-14 08:26:46'),
(30, 26, 11, 0, '2025-07-14', 0.00, '2025-07-14 08:26:57', '2025-07-14 08:26:57'),
(31, 26, 9, 0, '2025-07-14', 0.00, '2025-07-14 08:43:40', '2025-07-14 08:43:40'),
(32, 26, 10, 0, '2025-07-14', 0.00, '2025-07-14 08:44:15', '2025-07-14 08:44:15'),
(33, 26, 12, 0, '2025-07-15', 0.00, '2025-07-15 05:54:12', '2025-07-15 05:54:12'),
(34, 26, 9, 0, '2025-07-15', 0.00, '2025-07-15 05:54:51', '2025-07-15 05:54:51'),
(35, 26, 10, 0, '2025-07-15', 0.00, '2025-07-15 05:54:54', '2025-07-15 05:54:54'),
(36, 26, 11, 0, '2025-07-15', 0.00, '2025-07-15 05:55:01', '2025-07-15 05:55:01'),
(37, 26, 12, 0, '2025-07-16', 0.00, '2025-07-16 18:41:29', '2025-07-16 18:41:29'),
(38, 26, 9, 0, '2025-07-16', 0.00, '2025-07-16 18:42:21', '2025-07-16 18:42:21'),
(39, 26, 10, 0, '2025-07-16', 0.00, '2025-07-16 18:42:23', '2025-07-16 18:42:23'),
(40, 26, 11, 0, '2025-07-16', 0.00, '2025-07-16 19:22:55', '2025-07-16 19:22:55'),
(41, 26, 12, 0, '2025-07-17', 0.00, '2025-07-17 03:14:58', '2025-07-17 03:14:58'),
(42, 26, 9, 0, '2025-07-17', 0.00, '2025-07-17 03:15:18', '2025-07-17 03:15:18'),
(43, 26, 10, 0, '2025-07-17', 0.00, '2025-07-17 03:15:19', '2025-07-17 03:15:19'),
(44, 26, 11, 0, '2025-07-17', 0.00, '2025-07-17 03:15:20', '2025-07-17 03:15:20');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `image` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `tags` varchar(255) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `bookmarks`
--

CREATE TABLE `bookmarks` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `updates_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE `business` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `business_name` varchar(255) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `logo` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `business`
--

INSERT INTO `business` (`id`, `user_id`, `business_name`, `category_id`, `logo`, `created_at`, `updated_at`) VALUES
(2, 26, 'DreamBuilders Ventures', 20, 'business_logos/fWAQqmIiYHy13tkg944nTjn8O1s1lEOl0uaHFldt.png', '2025-06-21 13:54:00', '2025-06-21 13:54:00');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `mode` enum('on','off') NOT NULL DEFAULT 'on',
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `keywords`, `mode`, `image`) VALUES
(5, 'Jamalpur, Jamalpur Sadar, Bangladesh', 'jamalpur', 'Buy and Sell', 'buy, sell, marketplace, second hand, used', 'on', 'animation-N600Gsc1uJffH9Jsdjo9kYpq3TKl7E9x.jpg'),
(14, 'Melandah, Jamalpur, Bangladesh', 'melandah', '', 'Service', 'on', 'nid-qfiwypph6gn91T6gWq2NmVrPEPtRSDSf.png'),
(16, 'Bakshiganj, Jamalpur, Bangladesh', 'bakshiganj', '', '', 'on', 'bakshiganj-JancWsDUgm9zbdASq3u2zTojAsn0l47l.jpg'),
(17, 'Islampur, Jamalpur, Bangladesh', 'Islampur', '', '', 'on', 'Islampur-uC6Pfp75gIEHZaXYKE3fo7WLIYtd9HlI.jpg'),
(18, 'Sarishabari, Jamalpur, Bangladesh', 'sarishabari', '', '', 'on', 'sarishabari-7wFqXnYbqybPiCYHPuYgudU8TmAWSRir.png'),
(19, 'Dewanganj, Jamalpur, Bangladesh', 'dewanganj', '', '', 'on', 'dewanganj-Tp7qcsgkRvKJ8sD0nBCJp9NKZvhpZrvW.png'),
(20, 'Madarganj, Jamalpur, Bangladesh', 'madarganj', '', '', 'on', 'madarganj-AglriteqNI6rWG14d28TruTMaN9lZGpB.png'),
(21, 'Sherpur, Sadar, Bangladesh', 'sherpur', '', '', 'on', 'sherpur-6h6iSZayepdnTvhxONUw7SP10TYaROYL.png'),
(22, 'Sreebordi, Sherpur, Bangladesh', 'sreebordi', '', '', 'on', 'sreebordi-QSoP6YmA188r90vDh4nALH9sDTXd7WHh.png');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `updates_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `reply` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 Trash, 1 Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments_likes`
--

CREATE TABLE `comments_likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `comments_id` int(10) UNSIGNED NOT NULL,
  `replies_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_1` int(11) NOT NULL,
  `user_2` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'US', 'United States'),
(2, 'CA', 'Canada'),
(3, 'AF', 'Afghanistan'),
(4, 'AL', 'Albania'),
(5, 'DZ', 'Algeria'),
(6, 'DS', 'American Samoa'),
(7, 'AD', 'Andorra'),
(8, 'AO', 'Angola'),
(9, 'AI', 'Anguilla'),
(10, 'AQ', 'Antarctica'),
(11, 'AG', 'Antigua and/or Barbuda'),
(12, 'AR', 'Argentina'),
(13, 'AM', 'Armenia'),
(14, 'AW', 'Aruba'),
(15, 'AU', 'Australia'),
(16, 'AT', 'Austria'),
(17, 'AZ', 'Azerbaijan'),
(18, 'BS', 'Bahamas'),
(19, 'BH', 'Bahrain'),
(20, 'BD', 'Bangladesh'),
(21, 'BB', 'Barbados'),
(22, 'BY', 'Belarus'),
(23, 'BE', 'Belgium'),
(24, 'BZ', 'Belize'),
(25, 'BJ', 'Benin'),
(26, 'BM', 'Bermuda'),
(27, 'BT', 'Bhutan'),
(28, 'BO', 'Bolivia'),
(29, 'BA', 'Bosnia and Herzegovina'),
(30, 'BW', 'Botswana'),
(31, 'BV', 'Bouvet Island'),
(32, 'BR', 'Brazil'),
(33, 'IO', 'British lndian Ocean Territory'),
(34, 'BN', 'Brunei Darussalam'),
(35, 'BG', 'Bulgaria'),
(36, 'BF', 'Burkina Faso'),
(37, 'BI', 'Burundi'),
(38, 'KH', 'Cambodia'),
(39, 'CM', 'Cameroon'),
(40, 'CV', 'Cape Verde'),
(41, 'KY', 'Cayman Islands'),
(42, 'CF', 'Central African Republic'),
(43, 'TD', 'Chad'),
(44, 'CL', 'Chile'),
(45, 'CN', 'China'),
(46, 'CX', 'Christmas Island'),
(47, 'CC', 'Cocos (Keeling) Islands'),
(48, 'CO', 'Colombia'),
(49, 'KM', 'Comoros'),
(50, 'CG', 'Congo'),
(51, 'CK', 'Cook Islands'),
(52, 'CR', 'Costa Rica'),
(53, 'HR', 'Croatia (Hrvatska)'),
(54, 'CU', 'Cuba'),
(55, 'CY', 'Cyprus'),
(56, 'CZ', 'Czech Republic'),
(57, 'DK', 'Denmark'),
(58, 'DJ', 'Djibouti'),
(59, 'DM', 'Dominica'),
(60, 'DO', 'Dominican Republic'),
(61, 'TP', 'East Timor'),
(62, 'EC', 'Ecuador'),
(63, 'EG', 'Egypt'),
(64, 'SV', 'El Salvador'),
(65, 'GQ', 'Equatorial Guinea'),
(66, 'ER', 'Eritrea'),
(67, 'EE', 'Estonia'),
(68, 'ET', 'Ethiopia'),
(69, 'FK', 'Falkland Islands (Malvinas)'),
(70, 'FO', 'Faroe Islands'),
(71, 'FJ', 'Fiji'),
(72, 'FI', 'Finland'),
(73, 'FR', 'France'),
(74, 'FX', 'France, Metropolitan'),
(75, 'GF', 'French Guiana'),
(76, 'PF', 'French Polynesia'),
(77, 'TF', 'French Southern Territories'),
(78, 'GA', 'Gabon'),
(79, 'GM', 'Gambia'),
(80, 'GE', 'Georgia'),
(81, 'DE', 'Germany'),
(82, 'GH', 'Ghana'),
(83, 'GI', 'Gibraltar'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and Mc Donald Islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'ID', 'Indonesia'),
(101, 'IR', 'Iran (Islamic Republic of)'),
(102, 'IQ', 'Iraq'),
(103, 'IE', 'Ireland'),
(104, 'IL', 'Israel'),
(105, 'IT', 'Italy'),
(106, 'CI', 'Ivory Coast'),
(107, 'JM', 'Jamaica'),
(108, 'JP', 'Japan'),
(109, 'JO', 'Jordan'),
(110, 'KZ', 'Kazakhstan'),
(111, 'KE', 'Kenya'),
(112, 'KI', 'Kiribati'),
(113, 'KP', 'Korea, Democratic People\'s Republic of'),
(114, 'KR', 'Korea, Republic of'),
(115, 'XK', 'Kosovo'),
(116, 'KW', 'Kuwait'),
(117, 'KG', 'Kyrgyzstan'),
(118, 'LA', 'Lao People\'s Democratic Republic'),
(119, 'LV', 'Latvia'),
(120, 'LB', 'Lebanon'),
(121, 'LS', 'Lesotho'),
(122, 'LR', 'Liberia'),
(123, 'LY', 'Libyan Arab Jamahiriya'),
(124, 'LI', 'Liechtenstein'),
(125, 'LT', 'Lithuania'),
(126, 'LU', 'Luxembourg'),
(127, 'MO', 'Macau'),
(128, 'MK', 'Macedonia'),
(129, 'MG', 'Madagascar'),
(130, 'MW', 'Malawi'),
(131, 'MY', 'Malaysia'),
(132, 'MV', 'Maldives'),
(133, 'ML', 'Mali'),
(134, 'MT', 'Malta'),
(135, 'MH', 'Marshall Islands'),
(136, 'MQ', 'Martinique'),
(137, 'MR', 'Mauritania'),
(138, 'MU', 'Mauritius'),
(139, 'TY', 'Mayotte'),
(140, 'MX', 'Mexico'),
(141, 'FM', 'Micronesia, Federated States of'),
(142, 'MD', 'Moldova, Republic of'),
(143, 'MC', 'Monaco'),
(144, 'MN', 'Mongolia'),
(145, 'ME', 'Montenegro'),
(146, 'MS', 'Montserrat'),
(147, 'MA', 'Morocco'),
(148, 'MZ', 'Mozambique'),
(149, 'MM', 'Myanmar'),
(150, 'NA', 'Namibia'),
(151, 'NR', 'Nauru'),
(152, 'NP', 'Nepal'),
(153, 'NL', 'Netherlands'),
(154, 'AN', 'Netherlands Antilles'),
(155, 'NC', 'New Caledonia'),
(156, 'NZ', 'New Zealand'),
(157, 'NI', 'Nicaragua'),
(158, 'NE', 'Niger'),
(159, 'NG', 'Nigeria'),
(160, 'NU', 'Niue'),
(161, 'NF', 'Norfork Island'),
(162, 'MP', 'Northern Mariana Islands'),
(163, 'NO', 'Norway'),
(164, 'OM', 'Oman'),
(165, 'PK', 'Pakistan'),
(166, 'PW', 'Palau'),
(167, 'PA', 'Panama'),
(168, 'PG', 'Papua New Guinea'),
(169, 'PY', 'Paraguay'),
(170, 'PE', 'Peru'),
(171, 'PH', 'Philippines'),
(172, 'PN', 'Pitcairn'),
(173, 'PL', 'Poland'),
(174, 'PT', 'Portugal'),
(175, 'PR', 'Puerto Rico'),
(176, 'QA', 'Qatar'),
(177, 'RE', 'Reunion'),
(178, 'RO', 'Romania'),
(179, 'RU', 'Russian Federation'),
(180, 'RW', 'Rwanda'),
(181, 'KN', 'Saint Kitts and Nevis'),
(182, 'LC', 'Saint Lucia'),
(183, 'VC', 'Saint Vincent and the Grenadines'),
(184, 'WS', 'Samoa'),
(185, 'SM', 'San Marino'),
(186, 'ST', 'Sao Tome and Principe'),
(187, 'SA', 'Saudi Arabia'),
(188, 'SN', 'Senegal'),
(189, 'RS', 'Serbia'),
(190, 'SC', 'Seychelles'),
(191, 'SL', 'Sierra Leone'),
(192, 'SG', 'Singapore'),
(193, 'SK', 'Slovakia'),
(194, 'SI', 'Slovenia'),
(195, 'SB', 'Solomon Islands'),
(196, 'SO', 'Somalia'),
(197, 'ZA', 'South Africa'),
(198, 'GS', 'South Georgia South Sandwich Islands'),
(199, 'ES', 'Spain'),
(200, 'LK', 'Sri Lanka'),
(201, 'SH', 'St. Helena'),
(202, 'PM', 'St. Pierre and Miquelon'),
(203, 'SD', 'Sudan'),
(204, 'SR', 'Suriname'),
(205, 'SJ', 'Svalbarn and Jan Mayen Islands'),
(206, 'SZ', 'Swaziland'),
(207, 'SE', 'Sweden'),
(208, 'CH', 'Switzerland'),
(209, 'SY', 'Syrian Arab Republic'),
(210, 'TW', 'Taiwan'),
(211, 'TJ', 'Tajikistan'),
(212, 'TZ', 'Tanzania, United Republic of'),
(213, 'TH', 'Thailand'),
(214, 'TG', 'Togo'),
(215, 'TK', 'Tokelau'),
(216, 'TO', 'Tonga'),
(217, 'TT', 'Trinidad and Tobago'),
(218, 'TN', 'Tunisia'),
(219, 'TR', 'Turkey'),
(220, 'TM', 'Turkmenistan'),
(221, 'TC', 'Turks and Caicos Islands'),
(222, 'TV', 'Tuvalu'),
(223, 'UG', 'Uganda'),
(224, 'UA', 'Ukraine'),
(225, 'AE', 'United Arab Emirates'),
(226, 'GB', 'United Kingdom'),
(227, 'UM', 'United States minor outlying islands'),
(228, 'UY', 'Uruguay'),
(229, 'UZ', 'Uzbekistan'),
(230, 'VU', 'Vanuatu'),
(231, 'VA', 'Vatican City State'),
(232, 'VE', 'Venezuela'),
(233, 'VN', 'Vietnam'),
(234, 'VG', 'Virgin Islands (British)'),
(235, 'VI', 'Virgin Islands (U.S.)'),
(236, 'WF', 'Wallis and Futuna Islands'),
(237, 'EH', 'Western Sahara'),
(238, 'YE', 'Yemen'),
(239, 'YU', 'Yugoslavia'),
(240, 'ZR', 'Zaire'),
(241, 'ZM', 'Zambia'),
(242, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `txn_id` varchar(200) NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  `payment_gateway` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` enum('active','pending') NOT NULL DEFAULT 'active',
  `screenshot_transfer` varchar(100) NOT NULL,
  `percentage_applied` varchar(50) DEFAULT NULL,
  `transaction_fee` double(10,2) NOT NULL,
  `taxes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) DEFAULT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gifts`
--

CREATE TABLE `gifts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"uuid\":\"c45b11d4-9cf1-439f-876c-c1c35fd782e1\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1744122793, 1744122793),
(2, 'default', '{\"uuid\":\"dbc8d732-2129-46d2-aa31-e8a0b0bb55d8\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1744399644, 1744399644),
(3, 'default', '{\"uuid\":\"1ebe0121-73e1-412f-9949-9f6ce2df9801\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1744474749, 1744474749),
(4, 'default', '{\"uuid\":\"9736aca9-5e2b-4316-8cd9-11e085a3084c\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1744481704, 1744481704),
(5, 'default', '{\"uuid\":\"b716e0f1-13ed-44c9-8792-c0b39d1baa3c\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:5;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1744483212, 1744483212),
(6, 'default', '{\"uuid\":\"cc8454c9-a6c6-46a1-a3ec-283f29b16e80\",\"displayName\":\"App\\\\Listeners\\\\NewPostListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:29:\\\"App\\\\Listeners\\\\NewPostListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:23:\\\"App\\\\Events\\\\NewPostEvent\\\":1:{s:4:\\\"post\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Updates\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1744491500, 1744491500),
(7, 'default', '{\"uuid\":\"3dd02fdc-01b1-4372-951e-f61f409d0223\",\"displayName\":\"App\\\\Listeners\\\\SubscriptionDisabledListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\SubscriptionDisabledListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\SubscriptionDisabledEvent\\\":2:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:11;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:16:\\\"freeSubscription\\\";s:3:\\\"yes\\\";}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1747393722, 1747393722),
(8, 'default', '{\"uuid\":\"09842efe-3095-4759-8fd3-24b105b37ca8\",\"displayName\":\"App\\\\Notifications\\\\TipReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:29:\\\"App\\\\Notifications\\\\TipReceived\\\":2:{s:35:\\\"\\u0000App\\\\Notifications\\\\TipReceived\\u0000data\\\";a:2:{s:6:\\\"tipper\\\";s:8:\\\"ariful11\\\";s:6:\\\"amount\\\";s:1:\\\"5\\\";}s:2:\\\"id\\\";s:36:\\\"df1a1556-d69c-4259-9dac-8555b1c0390f\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1748170420, 1748170420),
(9, 'default', '{\"uuid\":\"e5a905d3-217e-4d3d-8ccc-a59ad2a7b6fb\",\"displayName\":\"App\\\\Notifications\\\\AdminWithdrawalPending\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:16:\\\"admin@hubuhu.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:40:\\\"App\\\\Notifications\\\\AdminWithdrawalPending\\\":2:{s:4:\\\"data\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:22:\\\"App\\\\Models\\\\Withdrawals\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"14a2d4da-4802-4c46-81ac-d675b174b865\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1748201823, 1748201823),
(10, 'default', '{\"uuid\":\"da69401a-93e6-4e83-a51e-dbdb8ef67a7a\",\"displayName\":\"App\\\\Listeners\\\\SubscriptionDisabledListener\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":20:{s:5:\\\"class\\\";s:42:\\\"App\\\\Listeners\\\\SubscriptionDisabledListener\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:36:\\\"App\\\\Events\\\\SubscriptionDisabledEvent\\\":2:{s:4:\\\"user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:16:\\\"freeSubscription\\\";s:3:\\\"yes\\\";}}s:5:\\\"tries\\\";N;s:13:\\\"maxExceptions\\\";N;s:7:\\\"backoff\\\";N;s:10:\\\"retryUntil\\\";N;s:7:\\\"timeout\\\";N;s:13:\\\"failOnTimeout\\\";b:0;s:17:\\\"shouldBeEncrypted\\\";b:0;s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1748299659, 1748299659),
(11, 'default', '{\"uuid\":\"f2e98ca2-b63e-4107-94cf-9e30664324d3\",\"displayName\":\"App\\\\Notifications\\\\TipReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:17;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:29:\\\"App\\\\Notifications\\\\TipReceived\\\":2:{s:35:\\\"\\u0000App\\\\Notifications\\\\TipReceived\\u0000data\\\";a:2:{s:6:\\\"tipper\\\";s:5:\\\"admin\\\";s:6:\\\"amount\\\";s:1:\\\"5\\\";}s:2:\\\"id\\\";s:36:\\\"6eb370e9-29ab-4987-9fa2-3e54269844d6\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1748703144, 1748703144),
(12, 'default', '{\"uuid\":\"e7d233ab-faa3-4596-8768-6dca6084b498\",\"displayName\":\"App\\\\Notifications\\\\TipReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:18;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:29:\\\"App\\\\Notifications\\\\TipReceived\\\":2:{s:35:\\\"\\u0000App\\\\Notifications\\\\TipReceived\\u0000data\\\";a:2:{s:6:\\\"tipper\\\";s:5:\\\"admin\\\";s:6:\\\"amount\\\";s:1:\\\"5\\\";}s:2:\\\"id\\\";s:36:\\\"6dfeb335-e3fb-418c-89ce-0755fee6ca51\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1748791190, 1748791190),
(13, 'default', '{\"uuid\":\"d44a5dc9-dee9-40fe-b18c-92f49dacf323\",\"displayName\":\"App\\\\Notifications\\\\TipReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:1;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:29:\\\"App\\\\Notifications\\\\TipReceived\\\":2:{s:35:\\\"\\u0000App\\\\Notifications\\\\TipReceived\\u0000data\\\";a:2:{s:6:\\\"tipper\\\";s:8:\\\"ariful18\\\";s:6:\\\"amount\\\";s:2:\\\"10\\\";}s:2:\\\"id\\\";s:36:\\\"6fb74482-bf67-41c8-a382-25341df1aa8d\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1748862643, 1748862643),
(14, 'default', '{\"uuid\":\"d5a4f903-2c8d-49fd-a11c-e64500fdc798\",\"displayName\":\"App\\\\Notifications\\\\AdminWithdrawalPending\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:16:\\\"admin@hubuhu.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:40:\\\"App\\\\Notifications\\\\AdminWithdrawalPending\\\":2:{s:4:\\\"data\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:22:\\\"App\\\\Models\\\\Withdrawals\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"92b1f3c8-02a7-4f9f-9328-c4c8d6b02a24\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1748879643, 1748879643),
(15, 'default', '{\"uuid\":\"d6952ca8-5731-44ba-9237-06e8b8e19086\",\"displayName\":\"App\\\\Notifications\\\\TipReceived\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";a:1:{i:0;i:19;}s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:12:\\\"notification\\\";O:29:\\\"App\\\\Notifications\\\\TipReceived\\\":2:{s:35:\\\"\\u0000App\\\\Notifications\\\\TipReceived\\u0000data\\\";a:2:{s:6:\\\"tipper\\\";s:5:\\\"admin\\\";s:6:\\\"amount\\\";s:2:\\\"20\\\";}s:2:\\\"id\\\";s:36:\\\"9df8817d-d9a1-4cd1-bb37-4e74f5617abe\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1748936282, 1748936282),
(16, 'default', '{\"uuid\":\"fa4c56cf-b355-4628-99b1-2ab16148bd68\",\"displayName\":\"App\\\\Notifications\\\\AdminVerificationPending\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:16:\\\"admin@hubuhu.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:42:\\\"App\\\\Notifications\\\\AdminVerificationPending\\\":2:{s:4:\\\"data\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:31:\\\"App\\\\Models\\\\VerificationRequests\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"0dde47b4-1899-4f80-8780-2298481c2d28\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1748986696, 1748986696);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `abbreviation` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `abbreviation`) VALUES
(1, 'English', 'en'),
(2, 'Bangla', 'bn');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `updates_id` int(10) UNSIGNED NOT NULL,
  `status` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '1' COMMENT '0 trash, 1 active',
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `live_comments`
--

CREATE TABLE `live_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `live_streamings_id` int(10) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `joined` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `tip` enum('0','1') NOT NULL DEFAULT '0',
  `earnings` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gift_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `live_comments`
--

INSERT INTO `live_comments` (`id`, `user_id`, `live_streamings_id`, `comment`, `joined`, `tip`, `earnings`, `created_at`, `updated_at`, `gift_id`) VALUES
(1, 1, 1, 'hi', 0, '0', 0.00, '2025-04-08 09:13:05', '2025-04-08 09:13:05', NULL),
(2, 1, 1, 'this is test', 0, '0', 0.00, '2025-04-08 09:13:17', '2025-04-08 09:13:17', NULL),
(3, 1, 1, 'hea this is test😙', 0, '0', 0.00, '2025-04-08 09:13:35', '2025-04-08 09:13:35', NULL),
(4, 1, 2, 'Hi', 0, '0', 0.00, '2025-04-08 12:58:35', '2025-04-08 12:58:35', NULL),
(5, 1, 2, 'Test', 0, '0', 0.00, '2025-04-08 12:58:43', '2025-04-08 12:58:43', NULL),
(6, 1, 2, 'Hi', 0, '0', 0.00, '2025-04-08 12:59:29', '2025-04-08 12:59:29', NULL),
(7, 1, 2, 'Hhshd', 0, '0', 0.00, '2025-04-08 12:59:50', '2025-04-08 12:59:50', NULL),
(8, 1, 2, 'Hhhshshd', 0, '0', 0.00, '2025-04-08 12:59:55', '2025-04-08 12:59:55', NULL),
(9, 1, 2, 'Hhhehehe ggys', 0, '0', 0.00, '2025-04-08 13:00:02', '2025-04-08 13:00:02', NULL),
(10, 1, 2, 'Hhhsuehe', 0, '0', 0.00, '2025-04-08 13:00:14', '2025-04-08 13:00:14', NULL),
(11, 1, 3, 'H', 0, '0', 0.00, '2025-04-08 15:14:11', '2025-04-08 15:14:11', NULL),
(12, 1, 5, 'llo', 0, '0', 0.00, '2025-04-09 21:11:21', '2025-04-09 21:11:21', NULL),
(13, 1, 6, '0.6303', 0, '0', 0.00, '2025-04-09 21:14:34', '2025-04-09 21:14:34', NULL),
(14, 2, 7, 'hi', 0, '0', 0.00, '2025-04-09 23:28:22', '2025-04-09 23:28:22', NULL),
(15, 2, 9, 'Jjdjjdjdjdjdjdjs', 0, '0', 0.00, '2025-04-10 08:08:58', '2025-04-10 08:08:58', NULL),
(16, 2, 9, 'Hhssnkxgyeks', 0, '0', 0.00, '2025-04-10 08:09:06', '2025-04-10 08:09:06', NULL),
(17, 2, 9, 'Tyqujsjshshzksks', 0, '0', 0.00, '2025-04-10 08:09:12', '2025-04-10 08:09:12', NULL),
(18, 2, 22, 'jkkjjkj', 0, '0', 0.00, '2025-04-12 18:22:28', '2025-04-12 18:22:28', NULL),
(19, 2, 22, '😍', 0, '0', 0.00, '2025-04-12 18:22:44', '2025-04-12 18:22:44', NULL),
(20, 2, 26, 'Hi', 0, '0', 0.00, '2025-04-13 09:24:17', '2025-04-13 09:24:17', NULL),
(21, 1, 203, 'hi', 0, '0', 0.00, '2025-04-25 01:20:42', '2025-04-25 01:20:42', NULL),
(22, 1, 214, 'Hhshsh hhd', 0, '0', 0.00, '2025-05-03 16:19:25', '2025-05-03 16:19:25', NULL),
(23, 1, 214, 'Jjjsjbsdbbddj bhs', 0, '0', 0.00, '2025-05-03 16:19:49', '2025-05-03 16:19:49', NULL),
(24, 1, 214, 'Hhhshs hhhsbsbsj kkksjs hhjzjs jjjjs hhjjshhhd jixiid bjxiow ghizis jkxjvzgs hhye', 0, '0', 0.00, '2025-05-03 16:23:33', '2025-05-03 16:23:33', NULL),
(25, 2, 219, 'Hi', 0, '0', 0.00, '2025-05-09 00:14:59', '2025-05-09 00:14:59', NULL),
(26, 2, 223, '😇', 0, '0', 0.00, '2025-05-11 23:30:55', '2025-05-11 23:30:55', NULL),
(27, 2, 223, 'Hjsjd', 0, '0', 0.00, '2025-05-11 23:31:03', '2025-05-11 23:31:03', NULL),
(28, 2, 223, 'Jjhhsbsdb njd', 0, '0', 0.00, '2025-05-11 23:31:42', '2025-05-11 23:31:42', NULL),
(29, 2, 223, 'Bbsjjshss', 0, '0', 0.00, '2025-05-11 23:31:47', '2025-05-11 23:31:47', NULL),
(30, 2, 223, 'Hhshjssh hshisiw ggzisiww jhzisw', 0, '0', 0.00, '2025-05-11 23:31:54', '2025-05-11 23:31:54', NULL),
(31, 1, 228, 'Bhai ki acen0?', 0, '0', 0.00, '2025-05-12 22:40:17', '2025-05-12 22:40:17', NULL),
(32, 8, 230, '', 1, '0', 0.00, '2025-05-13 00:00:30', '2025-05-13 00:00:30', NULL),
(33, 8, 232, '', 1, '0', 0.00, '2025-05-13 00:00:33', '2025-05-13 00:00:33', NULL),
(34, 1, 230, 'Jjdhss hhhsbs', 0, '0', 0.00, '2025-05-13 00:53:04', '2025-05-13 00:53:04', NULL),
(35, 1, 230, 'Bbbshhsjss jkajs sjsjsj', 0, '0', 0.00, '2025-05-13 00:53:10', '2025-05-13 00:53:10', NULL),
(36, 1, 230, 'Hhahshs hziss skksjzbs', 0, '0', 0.00, '2025-05-13 00:53:16', '2025-05-13 00:53:16', NULL),
(37, 1, 230, 'Bbkskss', 0, '0', 0.00, '2025-05-13 00:53:20', '2025-05-13 00:53:20', NULL),
(38, 1, 236, 'hhhssbdbdd', 0, '0', 0.00, '2025-05-13 01:29:04', '2025-05-13 01:29:04', NULL),
(39, 1, 236, 'hhshsus huzuiaa isis', 0, '0', 0.00, '2025-05-13 01:29:10', '2025-05-13 01:29:10', NULL),
(40, 1, 236, 'hhjsisis jjususjd', 0, '0', 0.00, '2025-05-13 01:29:15', '2025-05-13 01:29:15', NULL),
(41, 1, 236, 'jjjsjssdud hhd', 0, '0', 0.00, '2025-05-13 01:29:21', '2025-05-13 01:29:21', NULL),
(42, 1, 236, 'jjsididihdhd', 0, '0', 0.00, '2025-05-13 01:29:28', '2025-05-13 01:29:28', NULL),
(43, 8, 233, '', 1, '0', 0.00, '2025-05-13 01:33:51', '2025-05-13 01:33:51', NULL),
(44, 8, 236, '', 1, '0', 0.00, '2025-05-13 01:34:00', '2025-05-13 01:34:00', NULL),
(45, 8, 245, '', 1, '0', 0.00, '2025-05-13 11:47:53', '2025-05-13 11:47:53', NULL),
(46, 8, 246, '', 1, '0', 0.00, '2025-05-13 11:48:07', '2025-05-13 11:48:07', NULL),
(47, 8, 247, '', 1, '0', 0.00, '2025-05-13 12:18:15', '2025-05-13 12:18:15', NULL),
(48, 2, 253, 'Hi', 0, '0', 0.00, '2025-05-13 17:53:31', '2025-05-13 17:53:31', NULL),
(49, 2, 256, 'Good', 0, '0', 0.00, '2025-05-13 20:19:11', '2025-05-13 20:19:11', NULL),
(50, 1, 257, 'Hi', 0, '0', 0.00, '2025-05-13 20:22:13', '2025-05-13 20:22:13', NULL),
(51, 1, 257, 'Thus isbtesthdhd hdjsj jkjsgs jzjjs jjjdjndnd', 0, '0', 0.00, '2025-05-13 20:22:22', '2025-05-13 20:22:22', NULL),
(52, 1, 257, 'Bbdbdbdbbdh hjjxhhsbs jjhhs', 0, '0', 0.00, '2025-05-13 20:22:28', '2025-05-13 20:22:28', NULL),
(53, 1, 257, 'Hhhshsbsbvsjsisheinnzbxhfued', 0, '0', 0.00, '2025-05-13 20:22:34', '2025-05-13 20:22:34', NULL),
(54, 1, 257, 'Hhhshhsbdnxjx jdjjdd dd', 0, '0', 0.00, '2025-05-13 20:22:40', '2025-05-13 20:22:40', NULL),
(55, 1, 275, '😔', 0, '0', 0.00, '2025-05-14 20:54:13', '2025-05-14 20:54:13', NULL),
(56, 1, 275, 'Hhdhhd', 0, '0', 0.00, '2025-05-14 20:54:30', '2025-05-14 20:54:30', NULL),
(57, 1, 283, '😍', 0, '0', 0.00, '2025-05-15 18:33:02', '2025-05-15 18:33:02', NULL),
(58, 1, 283, 'Hudururr', 0, '0', 0.00, '2025-05-15 18:35:43', '2025-05-15 18:35:43', NULL),
(59, 1, 283, 'Hhhdhhrhe', 0, '0', 0.00, '2025-05-15 18:35:47', '2025-05-15 18:35:47', NULL),
(60, 1, 284, 'Hannan', 0, '0', 0.00, '2025-05-15 18:39:58', '2025-05-15 18:39:58', NULL),
(61, 1, 284, '😭', 0, '0', 0.00, '2025-05-15 18:40:27', '2025-05-15 18:40:27', NULL),
(62, 2, 296, 'hh', 0, '0', 0.00, '2025-05-16 11:46:57', '2025-05-16 11:46:57', NULL),
(63, 2, 296, 'bshsks', 0, '0', 0.00, '2025-05-16 11:47:03', '2025-05-16 11:47:03', NULL),
(64, 2, 296, 'bbbsjsjs hhusjs jjzue uuusw', 0, '0', 0.00, '2025-05-16 11:47:10', '2025-05-16 11:47:10', NULL),
(65, 2, 296, 'hhhshwuwvhs', 0, '0', 0.00, '2025-05-16 11:47:16', '2025-05-16 11:47:16', NULL),
(66, 2, 296, 'jjsje hshhsjsb hsuidis jjiiuww uuuuuuw bshsuiss buuuwbbs', 0, '0', 0.00, '2025-05-16 11:52:39', '2025-05-16 11:52:39', NULL),
(67, 1, 306, 'hi', 0, '0', 0.00, '2025-05-16 20:02:05', '2025-05-16 20:02:05', NULL),
(68, 1, 306, 'shfjskd shdfjkshdf syfsfh sfsldfj slkdfjslf', 0, '0', 0.00, '2025-05-16 20:02:15', '2025-05-16 20:02:15', NULL),
(69, 11, 315, 'Hi', 0, '0', 0.00, '2025-05-17 09:12:52', '2025-05-17 09:12:52', NULL),
(70, 1, 316, 'hi', 0, '0', 0.00, '2025-05-17 17:05:43', '2025-05-17 17:05:43', NULL),
(71, 2, 325, '😊', 0, '0', 0.00, '2025-05-18 10:57:45', '2025-05-18 10:57:45', NULL),
(72, 2, 332, 'Hi', 0, '0', 0.00, '2025-05-19 17:49:15', '2025-05-19 17:49:15', NULL),
(73, 2, 345, 'Hhh', 0, '0', 0.00, '2025-05-20 10:20:33', '2025-05-20 10:20:33', NULL),
(74, 2, 352, 'Hi', 0, '0', 0.00, '2025-05-20 19:37:32', '2025-05-20 19:37:32', NULL),
(75, 11, 359, 'Hi', 0, '0', 0.00, '2025-05-20 23:05:11', '2025-05-20 23:05:11', NULL),
(76, 1, 361, 'hi', 0, '0', 0.00, '2025-05-21 00:48:36', '2025-05-21 00:48:36', NULL),
(77, 2, 374, 'Hi', 0, '0', 0.00, '2025-05-21 20:08:29', '2025-05-21 20:08:29', NULL),
(78, 11, 373, 'Hey', 0, '0', 0.00, '2025-05-21 20:08:47', '2025-05-21 20:08:47', NULL),
(79, 11, 384, 'Keu acen??', 0, '0', 0.00, '2025-05-22 03:12:07', '2025-05-22 03:12:07', NULL),
(80, 11, 384, 'Uuehehdbdhe hdvsbe', 0, '0', 0.00, '2025-05-22 03:12:16', '2025-05-22 03:12:16', NULL),
(81, 11, 384, 'Hhhshss hhshs uuuew jjsisue jjuiee', 0, '0', 0.00, '2025-05-22 03:12:33', '2025-05-22 03:12:33', NULL),
(82, 11, 384, 'This hhsjjskw kzksgww gyzusis bbxheikshs', 0, '0', 0.00, '2025-05-22 03:13:01', '2025-05-22 03:13:01', NULL),
(83, 2, 395, '', 1, '0', 0.00, '2025-05-22 14:01:54', '2025-05-22 14:01:54', NULL),
(84, 2, 398, '', 1, '0', 0.00, '2025-05-22 14:14:50', '2025-05-22 14:14:50', NULL),
(85, 2, 402, '', 1, '0', 0.00, '2025-05-22 16:53:48', '2025-05-22 16:53:48', NULL),
(86, 2, 402, 'Sei kiliar', 0, '0', 0.00, '2025-05-22 16:54:45', '2025-05-22 16:54:45', NULL),
(87, 11, 402, 'Tai', 0, '0', 0.00, '2025-05-22 16:58:03', '2025-05-22 16:58:03', NULL),
(88, 2, 402, 'Dekha ki jaitece', 0, '0', 0.00, '2025-05-22 16:58:52', '2025-05-22 16:58:52', NULL),
(89, 11, 402, 'Ami Sms dekte partaci', 0, '0', 0.00, '2025-05-22 16:59:18', '2025-05-22 16:59:18', NULL),
(90, 11, 402, 'Tumake dekha jaitase nah', 0, '0', 0.00, '2025-05-22 16:59:37', '2025-05-22 16:59:37', NULL),
(91, 11, 402, 'Reply daw', 0, '0', 0.00, '2025-05-22 17:01:11', '2025-05-22 17:01:11', NULL),
(92, 2, 405, '', 1, '0', 0.00, '2025-05-22 17:47:18', '2025-05-22 17:47:18', NULL),
(93, 1, 406, 'Hi', 0, '0', 0.00, '2025-05-22 18:51:50', '2025-05-22 18:51:50', NULL),
(94, 1, 406, 'This yhis test', 0, '0', 0.00, '2025-05-22 18:51:58', '2025-05-22 18:51:58', NULL),
(95, 2, 408, '', 1, '0', 0.00, '2025-05-22 20:02:41', '2025-05-22 20:02:41', NULL),
(96, 11, 409, 'Hi', 0, '0', 0.00, '2025-05-22 21:54:25', '2025-05-22 21:54:25', NULL),
(97, 11, 410, 'Jo bi ko dil naio', 0, '0', 0.00, '2025-05-22 22:15:37', '2025-05-22 22:15:37', NULL),
(98, 2, 411, '', 1, '0', 0.00, '2025-05-22 22:35:08', '2025-05-22 22:35:08', NULL),
(99, 2, 411, 'Jhhvvvh', 0, '0', 0.00, '2025-05-22 22:36:59', '2025-05-22 22:36:59', NULL),
(100, 2, 411, 'Hgffff', 0, '0', 0.00, '2025-05-22 22:37:17', '2025-05-22 22:37:17', NULL),
(101, 2, 412, '', 1, '0', 0.00, '2025-05-22 23:23:52', '2025-05-22 23:23:52', NULL),
(102, 2, 413, '', 1, '0', 0.00, '2025-05-22 23:30:14', '2025-05-22 23:30:14', NULL),
(103, 2, 417, '', 1, '0', 0.00, '2025-05-23 00:46:27', '2025-05-23 00:46:27', NULL),
(104, 2, 417, 'Hhhjdjd', 0, '0', 0.00, '2025-05-23 00:47:52', '2025-05-23 00:47:52', NULL),
(105, 2, 417, 'Bhhjsjjdhd', 0, '0', 0.00, '2025-05-23 00:47:57', '2025-05-23 00:47:57', NULL),
(106, 2, 417, 'Cghs', 0, '0', 0.00, '2025-05-23 00:48:02', '2025-05-23 00:48:02', NULL),
(107, 1, 418, '', 1, '0', 0.00, '2025-05-23 01:02:49', '2025-05-23 01:02:49', NULL),
(108, 1, 418, 'Bhhdhd', 0, '0', 0.00, '2025-05-23 01:03:58', '2025-05-23 01:03:58', NULL),
(109, 1, 418, 'Gghshhd', 0, '0', 0.00, '2025-05-23 01:04:38', '2025-05-23 01:04:38', NULL),
(110, 1, 419, 'Bhvv', 0, '0', 0.00, '2025-05-23 10:42:14', '2025-05-23 10:42:14', NULL),
(111, 1, 419, 'This is gsjsngs ljzhs ghizis vgzyyskdndmkkfjf', 0, '0', 0.00, '2025-05-23 10:43:49', '2025-05-23 10:43:49', NULL),
(112, 1, 419, 'Jjsjdjhf', 0, '0', 0.00, '2025-05-23 10:44:58', '2025-05-23 10:44:58', NULL),
(113, 11, 421, 'Ki clear', 0, '0', 0.00, '2025-05-23 11:39:41', '2025-05-23 11:39:41', NULL),
(114, 1, 421, '', 1, '0', 0.00, '2025-05-23 11:39:52', '2025-05-23 11:39:52', NULL),
(115, 11, 421, 'Video', 0, '0', 0.00, '2025-05-23 11:39:52', '2025-05-23 11:39:52', NULL),
(116, 11, 422, 'Hi', 0, '0', 0.00, '2025-05-23 13:44:33', '2025-05-23 13:44:33', NULL),
(117, 11, 424, 'Line a aso', 0, '0', 0.00, '2025-05-23 15:14:57', '2025-05-23 15:14:57', NULL),
(118, 1, 427, 'Hhdd', 0, '0', 0.00, '2025-05-23 20:54:08', '2025-05-23 20:54:08', NULL),
(119, 1, 427, '', 1, '0', 0.00, '2025-05-23 20:55:48', '2025-05-23 20:55:48', NULL),
(120, 1, 427, 'Bbhggg', 0, '0', 0.00, '2025-05-23 20:57:04', '2025-05-23 20:57:04', NULL),
(121, 1, 427, 'Vhhjsjjs', 0, '0', 0.00, '2025-05-23 20:57:11', '2025-05-23 20:57:11', NULL),
(122, 2, 428, '', 1, '0', 0.00, '2025-05-23 21:09:22', '2025-05-23 21:09:22', NULL),
(123, 2, 428, 'Hi', 0, '0', 0.00, '2025-05-23 21:09:38', '2025-05-23 21:09:38', NULL),
(124, 2, 428, 'It working 💪', 0, '0', 0.00, '2025-05-23 21:09:45', '2025-05-23 21:09:45', NULL),
(125, 2, 428, 'The bg color ??', 0, '0', 0.00, '2025-05-23 21:10:00', '2025-05-23 21:10:00', NULL),
(126, 2, 430, '', 1, '0', 0.00, '2025-05-23 21:35:13', '2025-05-23 21:35:13', NULL),
(127, 11, 433, 'Hi', 0, '0', 0.00, '2025-05-24 01:05:38', '2025-05-24 01:05:38', NULL),
(128, 1, 437, 'Hi', 0, '0', 0.00, '2025-05-24 03:14:25', '2025-05-24 03:14:25', NULL),
(129, 2, 438, '', 1, '0', 0.00, '2025-05-24 07:34:50', '2025-05-24 07:34:50', NULL),
(130, 2, 438, 'Hey', 0, '0', 0.00, '2025-05-24 07:35:02', '2025-05-24 07:35:02', NULL),
(131, 1, 439, 'Hsu', 0, '0', 0.00, '2025-05-24 10:37:41', '2025-05-24 10:37:41', NULL),
(132, 2, 439, '', 1, '0', 0.00, '2025-05-24 10:39:34', '2025-05-24 10:39:34', NULL),
(133, 1, 440, 'Hi', 0, '0', 0.00, '2025-05-24 13:11:53', '2025-05-24 13:11:53', NULL),
(134, 2, 441, '', 1, '0', 0.00, '2025-05-24 13:35:13', '2025-05-24 13:35:13', NULL),
(135, 2, 441, 'Hell', 0, '0', 0.00, '2025-05-24 13:35:24', '2025-05-24 13:35:24', NULL),
(136, 2, 441, 'From', 0, '0', 0.00, '2025-05-24 13:35:31', '2025-05-24 13:35:31', NULL),
(137, 1, 441, 'Check the comment on inbox', 0, '0', 0.00, '2025-05-24 13:36:30', '2025-05-24 13:36:30', NULL),
(138, 1, 441, 'Click on comment on inbox', 0, '0', 0.00, '2025-05-24 13:36:49', '2025-05-24 13:36:49', NULL),
(139, 1, 441, 'Check ur comment profile size', 0, '0', 0.00, '2025-05-24 13:37:13', '2025-05-24 13:37:13', NULL),
(140, 1, 442, 'rt', 0, '0', 0.00, '2025-05-24 14:28:57', '2025-05-24 14:28:57', NULL),
(141, 1, 442, 'ewe', 0, '0', 0.00, '2025-05-24 14:30:07', '2025-05-24 14:30:07', NULL),
(142, 2, 443, '', 1, '0', 0.00, '2025-05-24 14:37:39', '2025-05-24 14:37:39', NULL),
(143, 2, 443, 'Hi', 0, '0', 0.00, '2025-05-24 14:38:02', '2025-05-24 14:38:02', NULL),
(144, 2, 445, 'Hhdhjdjd', 0, '0', 0.00, '2025-05-24 14:45:20', '2025-05-24 14:45:20', NULL),
(145, 2, 445, 'Bbbsbs hdjbd', 0, '0', 0.00, '2025-05-24 14:45:37', '2025-05-24 14:45:37', NULL),
(146, 2, 447, '', 1, '0', 0.00, '2025-05-24 15:53:47', '2025-05-24 15:53:47', NULL),
(147, 2, 447, 'hi', 0, '0', 0.00, '2025-05-24 15:54:03', '2025-05-24 15:54:03', NULL),
(148, 2, 447, 'this is test', 0, '0', 0.00, '2025-05-24 15:54:22', '2025-05-24 15:54:22', NULL),
(149, 2, 453, '', 1, '0', 0.00, '2025-05-24 22:54:30', '2025-05-24 22:54:30', NULL),
(150, 2, 453, 'hi', 0, '0', 0.00, '2025-05-24 22:54:36', '2025-05-24 22:54:36', NULL),
(151, 11, 453, 'Hlw', 0, '0', 0.00, '2025-05-24 22:54:51', '2025-05-24 22:54:51', NULL),
(152, 2, 453, 'hi', 0, '0', 0.00, '2025-05-24 22:55:08', '2025-05-24 22:55:08', NULL),
(153, 2, 453, 'kjghjgj', 0, '0', 0.00, '2025-05-24 22:55:13', '2025-05-24 22:55:13', NULL),
(154, 2, 453, '', 0, '1', 10.00, '2025-05-24 22:55:26', '2025-05-24 22:55:26', NULL),
(155, 2, 453, 'hi', 0, '0', 0.00, '2025-05-24 22:56:46', '2025-05-24 22:56:46', NULL),
(156, 2, 454, '', 1, '0', 0.00, '2025-05-25 00:32:21', '2025-05-25 00:32:21', NULL),
(157, 2, 454, 'hi', 0, '0', 0.00, '2025-05-25 00:32:34', '2025-05-25 00:32:34', NULL),
(158, 2, 454, 'hi', 0, '0', 0.00, '2025-05-25 00:33:40', '2025-05-25 00:33:40', NULL),
(159, 2, 454, 'hi', 0, '0', 0.00, '2025-05-25 00:37:16', '2025-05-25 00:37:16', NULL),
(160, 2, 454, 'this is test', 0, '0', 0.00, '2025-05-25 00:39:01', '2025-05-25 00:39:01', NULL),
(161, 2, 457, 'Hi', 0, '0', 0.00, '2025-05-25 10:59:05', '2025-05-25 10:59:05', NULL),
(162, 11, 458, 'Hi', 0, '0', 0.00, '2025-05-25 12:28:08', '2025-05-25 12:28:08', NULL),
(163, 11, 459, 'Turu', 0, '0', 0.00, '2025-05-25 14:25:42', '2025-05-25 14:25:42', NULL),
(164, 2, 470, 'Hit', 0, '0', 0.00, '2025-05-26 19:01:55', '2025-05-26 19:01:55', NULL),
(165, 2, 475, '', 1, '0', 0.00, '2025-05-26 20:58:08', '2025-05-26 20:58:08', NULL),
(166, 14, 475, 'Hi', 0, '0', 0.00, '2025-05-26 21:01:08', '2025-05-26 21:01:08', NULL),
(167, 14, 478, 'Hi', 0, '0', 0.00, '2025-05-26 21:13:00', '2025-05-26 21:13:00', NULL),
(168, 2, 486, '', 1, '0', 0.00, '2025-05-27 00:01:43', '2025-05-27 00:01:43', NULL),
(169, 11, 486, 'Hhdhd', 0, '0', 0.00, '2025-05-27 00:05:05', '2025-05-27 00:05:05', NULL),
(170, 11, 486, 'Hhshsie', 0, '0', 0.00, '2025-05-27 00:05:19', '2025-05-27 00:05:19', NULL),
(171, 2, 487, '', 1, '0', 0.00, '2025-05-27 00:36:30', '2025-05-27 00:36:30', NULL),
(172, 2, 487, 'Hi', 0, '0', 0.00, '2025-05-27 00:37:28', '2025-05-27 00:37:28', NULL),
(173, 11, 487, 'Hi', 0, '0', 0.00, '2025-05-27 00:37:32', '2025-05-27 00:37:32', NULL),
(174, 2, 487, 'Hu', 0, '0', 0.00, '2025-05-27 00:38:19', '2025-05-27 00:38:19', NULL),
(175, 11, 487, 'Lokal host', 0, '0', 0.00, '2025-05-27 00:44:00', '2025-05-27 00:44:00', NULL),
(176, 2, 492, 'Jjdjjdd', 0, '0', 0.00, '2025-05-27 02:36:11', '2025-05-27 02:36:11', NULL),
(177, 11, 491, 'Hhhhdd', 0, '0', 0.00, '2025-05-27 02:36:34', '2025-05-27 02:36:34', NULL),
(178, 11, 491, 'Hhehhehhehe', 0, '0', 0.00, '2025-05-27 02:36:42', '2025-05-27 02:36:42', NULL),
(179, 2, 491, '', 1, '0', 0.00, '2025-05-27 02:37:36', '2025-05-27 02:37:36', NULL),
(180, 11, 493, 'Yyyyyt', 0, '0', 0.00, '2025-05-27 02:50:36', '2025-05-27 02:50:36', NULL),
(181, 2, 495, 'Hi', 0, '0', 0.00, '2025-05-27 03:10:15', '2025-05-27 03:10:15', NULL),
(182, 2, 497, 'Hd', 0, '0', 0.00, '2025-05-27 10:31:25', '2025-05-27 10:31:25', NULL),
(183, 2, 498, '', 1, '0', 0.00, '2025-05-27 10:53:27', '2025-05-27 10:53:27', NULL),
(184, 2, 499, '', 1, '0', 0.00, '2025-05-27 11:23:15', '2025-05-27 11:23:15', NULL),
(185, 2, 499, 'Hi', 0, '0', 0.00, '2025-05-27 11:24:28', '2025-05-27 11:24:28', NULL),
(186, 11, 499, 'Hi', 0, '0', 0.00, '2025-05-27 11:24:29', '2025-05-27 11:24:29', NULL),
(187, 11, 499, 'Same', 0, '0', 0.00, '2025-05-27 11:24:47', '2025-05-27 11:24:47', NULL),
(188, 2, 501, 'Hucf', 0, '0', 0.00, '2025-05-27 13:07:08', '2025-05-27 13:07:08', NULL),
(189, 2, 503, 'Hi', 0, '0', 0.00, '2025-05-27 16:01:04', '2025-05-27 16:01:04', NULL),
(190, 2, 503, 'Fuck', 0, '0', 0.00, '2025-05-27 16:01:25', '2025-05-27 16:01:25', NULL),
(191, 11, 505, 'Hi', 0, '0', 0.00, '2025-05-27 17:04:07', '2025-05-27 17:04:07', NULL),
(192, 11, 505, 'Hi', 0, '0', 0.00, '2025-05-27 17:04:25', '2025-05-27 17:04:25', NULL),
(193, 2, 506, 'Bi', 0, '0', 0.00, '2025-05-27 17:08:22', '2025-05-27 17:08:22', NULL),
(194, 2, 507, 'Hi', 0, '0', 0.00, '2025-05-27 18:23:51', '2025-05-27 18:23:51', NULL),
(195, 2, 507, 'Checjk inbox', 0, '0', 0.00, '2025-05-27 18:25:59', '2025-05-27 18:25:59', NULL),
(196, 1, 511, 'hi', 0, '0', 0.00, '2025-05-27 18:55:39', '2025-05-27 18:55:39', NULL),
(197, 1, 511, 'jhj', 0, '0', 0.00, '2025-05-27 18:55:45', '2025-05-27 18:55:45', NULL),
(198, 2, 511, '', 1, '0', 0.00, '2025-05-27 18:57:15', '2025-05-27 18:57:15', NULL),
(199, 2, 513, 'Bzz,,z,, ,z,, হয় ড়,', 0, '0', 0.00, '2025-05-27 19:02:24', '2025-05-27 19:02:24', NULL),
(200, 1, 519, 'Hu', 0, '0', 0.00, '2025-05-27 21:11:26', '2025-05-27 21:11:26', NULL),
(201, 1, 519, 'Hu', 0, '0', 0.00, '2025-05-27 21:14:09', '2025-05-27 21:14:09', NULL),
(202, 1, 520, 'Hi', 0, '0', 0.00, '2025-05-27 21:50:35', '2025-05-27 21:50:35', NULL),
(203, 2, 521, 'Hhhhdhd', 0, '0', 0.00, '2025-05-27 22:51:40', '2025-05-27 22:51:40', NULL),
(204, 2, 521, 'Hhhhehe yyehe', 0, '0', 0.00, '2025-05-27 22:51:47', '2025-05-27 22:51:47', NULL),
(205, 1, 521, 'Hi', 0, '0', 0.00, '2025-05-27 23:01:07', '2025-05-27 23:01:07', NULL),
(206, 2, 521, 'Oh', 0, '0', 0.00, '2025-05-27 23:02:04', '2025-05-27 23:02:04', NULL),
(207, 1, 521, 'Hi', 0, '0', 0.00, '2025-05-27 23:03:06', '2025-05-27 23:03:06', NULL),
(208, 1, 524, 'Vhi', 0, '0', 0.00, '2025-05-28 00:00:03', '2025-05-28 00:00:03', NULL),
(209, 1, 526, 'Hi', 0, '0', 0.00, '2025-05-28 00:54:33', '2025-05-28 00:54:33', NULL),
(210, 2, 529, 'Hi', 0, '0', 0.00, '2025-05-28 02:23:34', '2025-05-28 02:23:34', NULL),
(211, 1, 529, 'Hell', 0, '0', 0.00, '2025-05-28 02:24:00', '2025-05-28 02:24:00', NULL),
(212, 2, 530, 'Hi', 0, '0', 0.00, '2025-05-28 10:23:24', '2025-05-28 10:23:24', NULL),
(213, 1, 531, 'hi', 0, '0', 0.00, '2025-05-28 11:12:31', '2025-05-28 11:12:31', NULL),
(214, 1, 533, 'fff', 0, '0', 0.00, '2025-05-28 12:08:44', '2025-05-28 12:08:44', NULL),
(215, 2, 533, 'Ji bhia bolen', 0, '0', 0.00, '2025-05-28 12:08:50', '2025-05-28 12:08:50', NULL),
(216, 1, 533, 'number den', 0, '0', 0.00, '2025-05-28 12:09:26', '2025-05-28 12:09:26', NULL),
(217, 2, 533, '0162548484', 0, '0', 0.00, '2025-05-28 12:11:08', '2025-05-28 12:11:08', NULL),
(218, 2, 535, 'Hi', 0, '0', 0.00, '2025-05-28 15:37:56', '2025-05-28 15:37:56', NULL),
(219, 2, 536, 'Hi', 0, '0', 0.00, '2025-05-28 18:45:58', '2025-05-28 18:45:58', NULL),
(220, 2, 536, 'hi', 0, '0', 0.00, '2025-05-28 18:47:37', '2025-05-28 18:47:37', NULL),
(221, 1, 538, 'hi', 0, '0', 0.00, '2025-05-28 18:52:02', '2025-05-28 18:52:02', NULL),
(222, 1, 538, 'ki koren', 0, '0', 0.00, '2025-05-28 18:52:17', '2025-05-28 18:52:17', NULL),
(223, 1, 538, 'kicuna', 0, '0', 0.00, '2025-05-28 18:52:34', '2025-05-28 18:52:34', NULL),
(224, 2, 538, 'Tai naki', 0, '0', 0.00, '2025-05-28 18:53:05', '2025-05-28 18:53:05', NULL),
(225, 2, 538, 'Hi', 0, '0', 0.00, '2025-05-28 18:54:03', '2025-05-28 18:54:03', NULL),
(226, 1, 538, 'kicu na', 0, '0', 0.00, '2025-05-28 18:55:44', '2025-05-28 18:55:44', NULL),
(227, 2, 538, 'Khawa hoice', 0, '0', 0.00, '2025-05-28 18:57:28', '2025-05-28 18:57:28', NULL),
(228, 1, 538, 'na', 0, '0', 0.00, '2025-05-28 18:57:35', '2025-05-28 18:57:35', NULL),
(229, 2, 539, 'Hi', 0, '0', 0.00, '2025-05-28 20:01:43', '2025-05-28 20:01:43', NULL),
(230, 1, 539, 'hello', 0, '0', 0.00, '2025-05-28 20:04:24', '2025-05-28 20:04:24', NULL),
(231, 1, 551, 'Hi', 0, '0', 0.00, '2025-06-01 04:58:05', '2025-06-01 04:58:05', NULL),
(232, 1, 551, 'Hihshdbs hhdhsbs kkjsd', 0, '0', 0.00, '2025-06-01 04:59:05', '2025-06-01 04:59:05', NULL),
(233, 1, 553, 'Hi', 0, '0', 0.00, '2025-06-01 14:51:29', '2025-06-01 14:51:29', NULL),
(234, 1, 561, 'hi', 0, '0', 0.00, '2025-06-02 16:07:06', '2025-06-02 16:07:06', NULL),
(235, 1, 562, 'hi', 0, '0', 0.00, '2025-06-02 16:12:07', '2025-06-02 16:12:07', NULL),
(236, 1, 562, 'this is test', 0, '0', 0.00, '2025-06-02 16:15:47', '2025-06-02 16:15:47', NULL),
(237, 18, 562, 'He', 0, '0', 0.00, '2025-06-02 16:17:32', '2025-06-02 16:17:32', NULL),
(238, 1, 562, 'hi', 0, '0', 0.00, '2025-06-02 16:17:47', '2025-06-02 16:17:47', NULL),
(239, 1, 564, 'hi', 0, '0', 0.00, '2025-06-02 17:29:39', '2025-06-02 17:29:39', NULL),
(240, 1, 564, 'first', 0, '0', 0.00, '2025-06-02 17:31:11', '2025-06-02 17:31:11', NULL),
(241, 1, 564, 'hi', 0, '0', 0.00, '2025-06-02 17:32:04', '2025-06-02 17:32:04', NULL),
(242, 1, 564, 'hi', 0, '0', 0.00, '2025-06-02 17:33:55', '2025-06-02 17:33:55', NULL),
(243, 18, 564, 'Hh', 0, '0', 0.00, '2025-06-02 17:34:14', '2025-06-02 17:34:14', NULL),
(244, 19, 565, '', 1, '0', 0.00, '2025-06-02 17:50:38', '2025-06-02 17:50:38', NULL),
(245, 20, 567, '', 1, '0', 0.00, '2025-06-02 18:12:59', '2025-06-02 18:12:59', NULL),
(246, 18, 567, 'F', 0, '0', 0.00, '2025-06-02 18:14:01', '2025-06-02 18:14:01', NULL),
(247, 20, 568, '', 1, '0', 0.00, '2025-06-02 18:23:33', '2025-06-02 18:23:33', NULL),
(248, 20, 568, 'hi', 0, '0', 0.00, '2025-06-02 18:26:40', '2025-06-02 18:26:40', NULL),
(249, 20, 568, 'hkjhkg', 0, '0', 0.00, '2025-06-02 18:28:00', '2025-06-02 18:28:00', NULL),
(250, 1, 570, 'i want to remove this screen', 0, '0', 0.00, '2025-06-02 20:36:09', '2025-06-02 20:36:09', NULL),
(251, 1, 570, 'live video will place on homescreen, after click on play button', 0, '0', 0.00, '2025-06-02 20:36:48', '2025-06-02 20:36:48', NULL),
(252, 1, 570, 'understand?', 0, '0', 0.00, '2025-06-02 20:38:02', '2025-06-02 20:38:02', NULL),
(253, 18, 571, '', 1, '0', 0.00, '2025-06-02 21:25:24', '2025-06-02 21:25:24', NULL),
(254, 18, 571, 'ok', 0, '0', 0.00, '2025-06-02 21:25:36', '2025-06-02 21:25:36', NULL),
(255, 18, 571, 'sd', 0, '0', 0.00, '2025-06-02 21:30:20', '2025-06-02 21:30:20', NULL),
(256, 25, 576, 'Hi', 0, '0', 0.00, '2025-06-04 10:53:40', '2025-06-04 10:53:40', NULL),
(257, 1, 577, 'Bi', 0, '0', 0.00, '2025-06-04 11:31:14', '2025-06-04 11:31:14', NULL),
(258, 1, 577, 'Ki khobor', 0, '0', 0.00, '2025-06-04 11:31:27', '2025-06-04 11:31:27', NULL),
(259, 25, 585, 'Hi', 0, '0', 0.00, '2025-06-05 12:33:05', '2025-06-05 12:33:05', NULL),
(260, 1, 593, 'Bi', 0, '0', 0.00, '2025-06-05 17:19:16', '2025-06-05 17:19:16', NULL),
(261, 1, 593, 'M', 0, '0', 0.00, '2025-06-05 17:19:25', '2025-06-05 17:19:25', NULL),
(262, 27, 595, '', 1, '0', 0.00, '2025-06-05 17:36:32', '2025-06-05 17:36:32', NULL),
(263, 27, 595, '123', 0, '0', 0.00, '2025-06-05 17:37:07', '2025-06-05 17:37:07', NULL),
(264, 28, 597, 'Bi', 0, '0', 0.00, '2025-06-05 20:12:45', '2025-06-05 20:12:45', NULL),
(265, 1, 598, 'This is my offie', 0, '0', 0.00, '2025-06-05 22:39:48', '2025-06-05 22:39:48', NULL),
(266, 1, 605, 'jjlk', 0, '0', 0.00, '2025-06-07 20:26:17', '2025-06-07 20:26:17', NULL),
(267, 1, 608, 'Bbbjsjs', 0, '0', 0.00, '2025-06-08 01:24:37', '2025-06-08 01:24:37', NULL),
(268, 1, 608, 'Hih', 0, '0', 0.00, '2025-06-08 01:25:21', '2025-06-08 01:25:21', NULL),
(269, 25, 609, 'Hi', 0, '0', 0.00, '2025-06-08 17:44:03', '2025-06-08 17:44:03', NULL),
(270, 28, 617, 'রুমান ভাই  খবর কি', 0, '0', 0.00, '2025-06-12 11:09:49', '2025-06-12 11:09:49', NULL),
(271, 25, 629, 'Hi', 0, '0', 0.00, '2025-06-12 21:54:45', '2025-06-12 21:54:45', NULL),
(272, 1, 654, 'Gui', 0, '0', 0.00, '2025-06-17 11:17:15', '2025-06-17 11:17:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `live_likes`
--

CREATE TABLE `live_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `live_streamings_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `live_likes`
--

INSERT INTO `live_likes` (`id`, `user_id`, `live_streamings_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2025-04-08 09:13:33', '2025-04-08 09:13:33'),
(2, 1, 5, '2025-04-09 21:11:35', '2025-04-09 21:11:35'),
(5, 2, 253, '2025-05-13 17:53:47', '2025-05-13 17:53:47'),
(6, 2, 256, '2025-05-13 20:19:04', '2025-05-13 20:19:04'),
(7, 1, 283, '2025-05-15 18:32:38', '2025-05-15 18:32:38'),
(8, 1, 284, '2025-05-15 18:40:11', '2025-05-15 18:40:11'),
(9, 11, 292, '2025-05-16 01:40:04', '2025-05-16 01:40:04'),
(10, 2, 296, '2025-05-16 11:53:05', '2025-05-16 11:53:05');

-- --------------------------------------------------------

--
-- Table structure for table `live_online_users`
--

CREATE TABLE `live_online_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `live_streamings_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `live_online_users`
--

INSERT INTO `live_online_users` (`id`, `user_id`, `live_streamings_id`, `created_at`, `updated_at`) VALUES
(1, 8, 230, '2025-05-13 00:00:30', '2025-05-13 00:45:08'),
(2, 8, 232, '2025-05-13 00:00:33', '2025-05-13 00:45:34'),
(3, 8, 233, '2025-05-13 01:33:51', '2025-05-13 01:35:28'),
(4, 8, 236, '2025-05-13 01:34:00', '2025-05-13 01:35:36'),
(5, 8, 245, '2025-05-13 11:47:53', '2025-05-13 12:18:13'),
(6, 8, 246, '2025-05-13 11:48:07', '2025-05-13 12:27:04'),
(7, 8, 247, '2025-05-13 12:18:15', '2025-05-13 12:48:19'),
(8, 2, 395, '2025-05-22 14:01:54', '2025-05-22 14:01:54'),
(9, 2, 398, '2025-05-22 14:14:50', '2025-05-22 14:14:50'),
(10, 2, 402, '2025-05-22 16:53:48', '2025-05-22 16:53:48'),
(11, 2, 405, '2025-05-22 17:47:18', '2025-05-22 17:47:18'),
(12, 2, 408, '2025-05-22 20:02:41', '2025-05-22 20:05:45'),
(13, 2, 411, '2025-05-22 22:35:08', '2025-05-22 22:35:08'),
(14, 2, 412, '2025-05-22 23:23:52', '2025-05-22 23:23:52'),
(15, 2, 413, '2025-05-22 23:30:14', '2025-05-22 23:30:14'),
(16, 2, 417, '2025-05-23 00:46:27', '2025-05-23 00:57:26'),
(17, 1, 418, '2025-05-23 01:02:49', '2025-05-23 01:04:53'),
(18, 1, 421, '2025-05-23 11:39:52', '2025-05-23 11:39:52'),
(19, 1, 427, '2025-05-23 20:55:48', '2025-05-23 20:57:25'),
(20, 2, 428, '2025-05-23 21:09:22', '2025-05-23 21:11:59'),
(21, 2, 430, '2025-05-23 21:35:13', '2025-05-23 21:42:44'),
(22, 2, 438, '2025-05-24 07:34:50', '2025-05-24 07:36:56'),
(23, 2, 439, '2025-05-24 10:39:34', '2025-05-24 10:40:21'),
(24, 2, 441, '2025-05-24 13:35:13', '2025-05-24 13:35:34'),
(25, 2, 443, '2025-05-24 14:37:39', '2025-05-24 14:39:16'),
(26, 2, 447, '2025-05-24 15:53:47', '2025-05-24 15:54:36'),
(27, 2, 453, '2025-05-24 22:54:30', '2025-05-24 22:57:23'),
(28, 2, 454, '2025-05-25 00:32:21', '2025-05-25 00:39:06'),
(29, 2, 475, '2025-05-26 20:58:08', '2025-05-26 21:00:16'),
(30, 2, 486, '2025-05-27 00:01:43', '2025-05-27 00:03:28'),
(31, 2, 487, '2025-05-27 00:36:30', '2025-05-27 00:41:50'),
(32, 2, 491, '2025-05-27 02:37:36', '2025-05-27 02:42:42'),
(33, 2, 498, '2025-05-27 10:53:27', '2025-05-27 10:54:51'),
(34, 2, 499, '2025-05-27 11:23:15', '2025-05-27 11:25:14'),
(35, 2, 511, '2025-05-27 18:57:15', '2025-05-27 18:57:34'),
(36, 19, 565, '2025-06-02 17:50:38', '2025-06-02 17:51:01'),
(37, 20, 567, '2025-06-02 18:12:59', '2025-06-02 18:13:28'),
(38, 20, 568, '2025-06-02 18:23:33', '2025-06-02 18:28:52'),
(39, 18, 571, '2025-06-02 21:25:24', '2025-06-02 21:30:32'),
(40, 27, 595, '2025-06-05 17:36:32', '2025-06-05 17:37:28');

-- --------------------------------------------------------

--
-- Table structure for table `live_streamings`
--

CREATE TABLE `live_streamings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(100) NOT NULL DEFAULT 'normal',
  `user_id` int(10) UNSIGNED NOT NULL,
  `buyer_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `channel` text NOT NULL,
  `minutes` int(10) UNSIGNED NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `category` varchar(255) NOT NULL,
  `joined_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `availability` char(50) NOT NULL DEFAULT 'all_pay',
  `locations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`locations`)),
  `token` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `live_streamings`
--

INSERT INTO `live_streamings` (`id`, `type`, `user_id`, `buyer_id`, `name`, `channel`, `minutes`, `price`, `status`, `category`, `joined_at`, `created_at`, `updated_at`, `ends_at`, `availability`, `locations`, `token`) VALUES
(1, 'normal', 1, NULL, 'erter', 'live_afh3S_1', 0, 10, '1', '', NULL, '2025-04-08 09:12:48', '2025-04-08 09:13:53', NULL, 'free_paid_subscribers', NULL, NULL),
(2, 'normal', 1, NULL, 'No', 'live_3JII7_1', 0, 5, '1', '', NULL, '2025-04-08 12:58:13', '2025-04-08 13:00:23', NULL, 'all_pay', NULL, NULL),
(3, 'normal', 1, NULL, 'Sokal bazar', 'live_EnOrD_1', 0, 12, '1', '', NULL, '2025-04-08 15:13:44', '2025-04-08 15:14:21', NULL, 'all_pay', NULL, NULL),
(4, 'normal', 1, NULL, 'noman', 'live_6wdyy_1', 0, 10, '0', '', NULL, '2025-04-08 18:41:12', '2025-04-08 18:41:22', NULL, 'all_pay', NULL, NULL),
(5, 'normal', 1, NULL, 'reer', 'live_XbUL8_1', 0, 5, '1', '', NULL, '2025-04-09 21:10:50', '2025-04-09 21:12:54', NULL, 'free_paid_subscribers', NULL, NULL),
(6, 'normal', 1, NULL, 'adry', 'live_TO7iu_1', 0, 5, '1', '', NULL, '2025-04-09 21:14:10', '2025-04-09 21:15:02', NULL, 'all_pay', NULL, NULL),
(7, 'normal', 2, NULL, 'fff', 'live_1BLRW_2', 0, 5, '1', '', NULL, '2025-04-09 23:27:29', '2025-04-09 23:30:15', NULL, 'all_pay', NULL, NULL),
(8, 'normal', 1, NULL, '123', 'live_4XuoC_1', 0, 5, '1', '', NULL, '2025-04-10 08:04:54', '2025-04-10 08:05:18', NULL, 'all_pay', NULL, NULL),
(9, 'normal', 2, NULL, 'Hhhs', 'live_NzK7r_2', 0, 5, '1', '', NULL, '2025-04-10 08:06:41', '2025-04-10 08:09:51', NULL, 'all_pay', NULL, NULL),
(10, 'normal', 2, NULL, 'Hi', 'live_Qgn3B_2', 0, 5, '1', '', NULL, '2025-04-10 08:28:20', '2025-04-10 08:31:34', NULL, 'all_pay', NULL, NULL),
(11, 'normal', 2, NULL, 'noman', 'live_KAX0j_2', 0, 5, '1', '', NULL, '2025-04-10 09:35:54', '2025-04-10 09:36:46', NULL, 'free_paid_subscribers', NULL, NULL),
(12, 'normal', 2, NULL, 'Malik', 'live_Ve1km_2', 0, 5, '1', '', NULL, '2025-04-10 10:11:05', '2025-04-10 10:11:44', NULL, 'free_paid_subscribers', NULL, NULL),
(13, 'normal', 2, NULL, 'Demo', 'live_5sSh8_2', 0, 5, '1', '', NULL, '2025-04-10 13:17:43', '2025-04-10 13:18:31', NULL, 'free_paid_subscribers', NULL, NULL),
(14, 'normal', 2, NULL, 'Hi', 'live_uWT6n_2', 0, 5, '1', '', NULL, '2025-04-10 23:27:56', '2025-04-10 23:30:04', NULL, 'all_pay', NULL, NULL),
(15, 'normal', 2, NULL, 'Hu', 'live_x9iOm_2', 0, 5, '1', '', NULL, '2025-04-10 23:28:43', '2025-04-10 23:29:53', NULL, 'all_pay', NULL, NULL),
(16, 'normal', 2, NULL, 'Noman', 'live_3RiAH_2', 0, 10, '1', '', NULL, '2025-04-11 10:37:27', '2025-04-11 10:37:57', NULL, 'all_pay', NULL, NULL),
(17, 'normal', 2, NULL, 'noman', 'live_FQZBh_2', 0, 5, '1', '', NULL, '2025-04-11 12:02:27', '2025-04-11 12:02:55', NULL, 'all_pay', NULL, NULL),
(18, 'normal', 2, NULL, 'Youtube', 'live_0RsgV_2', 0, 5, '1', '', NULL, '2025-04-11 20:12:16', '2025-04-11 20:12:51', NULL, 'free_paid_subscribers', NULL, NULL),
(19, 'normal', 2, NULL, 'Sokalbazar', 'live_areJi_2', 0, 5, '1', '', NULL, '2025-04-11 22:21:12', '2025-04-11 22:23:09', NULL, 'all_pay', NULL, NULL),
(20, 'normal', 2, NULL, 'atd', 'live_knRMn_2', 0, 5, '1', '', NULL, '2025-04-11 23:33:18', '2025-04-11 23:33:35', NULL, 'all_pay', NULL, NULL),
(21, 'normal', 2, NULL, 'Harsh Shah', 'live_WIinj_2', 0, 5, '1', '', NULL, '2025-04-12 16:04:22', '2025-04-12 16:05:04', NULL, 'free_paid_subscribers', NULL, NULL),
(22, 'normal', 2, NULL, 'Test Live Stream', 'live_HH8Tz_2', 0, 5, '1', '', NULL, '2025-04-12 18:21:48', '2025-04-12 18:22:58', NULL, 'all_pay', NULL, NULL),
(23, 'normal', 2, NULL, 'test', 'live_TNjYo_2', 0, 5, '1', '', NULL, '2025-04-12 18:29:51', '2025-04-12 19:44:03', NULL, 'all_pay', NULL, NULL),
(24, 'normal', 2, NULL, 'test', 'live_ys7Sz_2', 0, 5, '1', '', NULL, '2025-04-12 22:36:52', '2025-04-12 22:37:26', NULL, 'all_pay', NULL, NULL),
(25, 'normal', 2, NULL, 'noman', 'live_UZApu_2', 0, 5, '0', '', NULL, '2025-04-12 22:39:55', '2025-04-12 22:44:37', NULL, 'all_pay', NULL, NULL),
(26, 'normal', 2, NULL, 'Noman', 'live_oJc9w_2', 0, 5, '1', '', NULL, '2025-04-13 09:23:52', '2025-04-13 09:24:29', NULL, 'free_paid_subscribers', NULL, NULL),
(27, 'normal', 2, NULL, 'sami', 'live_ICZUP_2', 0, 5, '1', '', NULL, '2025-04-13 09:45:34', '2025-04-13 10:08:58', NULL, 'free_paid_subscribers', NULL, NULL),
(28, 'normal', 2, NULL, 'Test', 'live_TGeaY_2', 0, 10, '1', '', NULL, '2025-04-13 11:40:06', '2025-04-13 11:43:14', NULL, 'free_paid_subscribers', NULL, NULL),
(29, 'normal', 2, NULL, 'Testing', 'live_gyWzw_2', 0, 9, '1', '', NULL, '2025-04-13 11:47:42', '2025-04-13 11:50:11', NULL, 'all_pay', NULL, NULL),
(30, 'normal', 2, NULL, 'test', 'live_h5Dz5_2', 0, 10, '1', '', NULL, '2025-04-13 11:52:43', '2025-04-13 12:02:18', NULL, 'all_pay', NULL, NULL),
(31, 'normal', 1, NULL, 'test', 'live_sLUgS_1', 0, 7, '1', '', NULL, '2025-04-13 12:35:58', '2025-04-13 12:46:55', NULL, 'all_pay', NULL, NULL),
(32, 'normal', 1, NULL, 'test', 'live_6IUsH_1', 0, 10, '0', '', NULL, '2025-04-13 13:06:56', '2025-04-13 13:25:26', NULL, 'all_pay', NULL, NULL),
(33, 'normal', 1, NULL, 'test', 'live_FuEtC_1', 0, 10, '0', '', NULL, '2025-04-13 13:32:14', '2025-04-13 14:54:41', NULL, 'all_pay', NULL, NULL),
(34, 'normal', 1, NULL, 'test', '', 0, 10, '0', '', NULL, '2025-04-13 13:32:16', '2025-04-13 13:32:16', NULL, '0', NULL, NULL),
(35, 'normal', 1, NULL, 'test', '', 0, 10, '0', '', NULL, '2025-04-13 13:32:30', '2025-04-13 13:32:30', NULL, '0', NULL, NULL),
(36, 'normal', 1, NULL, 'test', 'live_1', 0, 10, '0', '', NULL, '2025-04-13 13:34:37', '2025-04-13 13:34:37', NULL, '0', NULL, NULL),
(37, 'normal', 1, NULL, 'test', 'live_c2hkT_1', 0, 10, '0', '', NULL, '2025-04-13 13:36:09', '2025-04-13 13:36:09', NULL, '0', NULL, NULL),
(38, 'normal', 1, NULL, 'test', 'live_w60JZ_1', 0, 10, '0', '', NULL, '2025-04-13 13:36:16', '2025-04-13 13:36:16', NULL, '0', NULL, NULL),
(39, 'normal', 1, NULL, 'test', 'live_l6gue_1', 0, 10, '0', '', NULL, '2025-04-13 13:37:45', '2025-04-13 13:37:45', NULL, '0', NULL, NULL),
(40, 'normal', 1, NULL, 'test', 'live_BByFM_1', 0, 10, '0', '', NULL, '2025-04-13 13:37:56', '2025-04-13 13:37:56', NULL, '0', NULL, NULL),
(41, 'normal', 1, NULL, 'test', 'live_TrxO1_1', 0, 10, '0', '', NULL, '2025-04-13 13:38:36', '2025-04-13 13:38:36', NULL, '0', NULL, NULL),
(42, 'normal', 1, NULL, 'test', 'live_Rfe7H_1', 0, 10, '0', '', NULL, '2025-04-13 13:38:49', '2025-04-13 13:38:49', NULL, '0', NULL, NULL),
(43, 'normal', 1, NULL, 'test', 'live_UI9nP_1', 0, 10, '0', '', NULL, '2025-04-13 13:39:21', '2025-04-13 13:39:21', NULL, '0', NULL, NULL),
(44, 'normal', 1, NULL, 'test', 'live_nXah8_1', 0, 10, '0', '', NULL, '2025-04-13 13:40:07', '2025-04-13 13:40:07', NULL, '0', NULL, NULL),
(45, 'normal', 1, NULL, 'test', 'live_ENR7S_1', 0, 10, '0', '', NULL, '2025-04-13 13:40:41', '2025-04-13 13:40:41', NULL, '0', NULL, NULL),
(46, 'normal', 1, NULL, 'test', 'live_xODc5_1', 0, 10, '0', '', NULL, '2025-04-13 13:42:29', '2025-04-13 13:42:29', NULL, '0', NULL, NULL),
(47, 'normal', 1, NULL, 'test', 'live_RnzOV_1', 0, 10, '0', '', NULL, '2025-04-13 13:42:49', '2025-04-13 13:42:49', NULL, '0', NULL, NULL),
(48, 'normal', 1, NULL, 'test', 'live_zHFPl_1', 0, 10, '0', '', NULL, '2025-04-13 13:42:59', '2025-04-13 13:42:59', NULL, '0', NULL, NULL),
(49, 'normal', 1, NULL, 'test', 'live_jwnfd_1', 0, 10, '0', '', NULL, '2025-04-13 13:43:13', '2025-04-13 13:43:13', NULL, '0', NULL, NULL),
(50, 'normal', 1, NULL, 'test', 'live_0yj8z_1', 0, 10, '0', '', NULL, '2025-04-13 13:43:44', '2025-04-13 13:43:44', NULL, '0', NULL, NULL),
(51, 'normal', 1, NULL, 'test', 'live_lE3aK_1', 0, 10, '0', '', NULL, '2025-04-13 13:44:31', '2025-04-13 13:44:31', NULL, '0', NULL, NULL),
(52, 'normal', 1, NULL, 'test', 'live_aOSWu_1', 0, 10, '0', '', NULL, '2025-04-13 14:26:09', '2025-04-13 14:26:09', NULL, '0', NULL, NULL),
(53, 'normal', 1, NULL, 'test', 'live_mHnRM_1', 0, 10, '0', '', NULL, '2025-04-13 14:28:38', '2025-04-13 14:28:38', NULL, '0', NULL, NULL),
(54, 'normal', 1, NULL, 'test', 'live_EjUsz_1', 0, 10, '0', '', NULL, '2025-04-13 14:30:53', '2025-04-13 14:30:53', NULL, '0', NULL, NULL),
(55, 'normal', 1, NULL, 'test', 'live_xc5MZ_1', 0, 10, '0', '', NULL, '2025-04-13 14:34:09', '2025-04-13 14:34:09', NULL, '0', NULL, NULL),
(56, 'normal', 1, NULL, 'test', 'live_YYC7d_1', 0, 10, '0', '', NULL, '2025-04-13 14:34:41', '2025-04-13 14:34:41', NULL, '0', NULL, NULL),
(57, 'normal', 1, NULL, 'test', 'live_sqLgz_1', 0, 10, '0', '', NULL, '2025-04-13 14:38:52', '2025-04-13 14:38:52', NULL, '0', NULL, NULL),
(58, 'normal', 1, NULL, 'test', 'live_neqTc_1', 0, 10, '0', '', NULL, '2025-04-13 14:39:08', '2025-04-13 14:39:08', NULL, '0', NULL, NULL),
(59, 'normal', 1, NULL, 'test', 'live_VTnc2_1', 0, 10, '0', '', NULL, '2025-04-13 14:39:17', '2025-04-13 14:39:17', NULL, '0', NULL, NULL),
(60, 'normal', 1, NULL, 'test', 'live_TbHIp_1', 0, 10, '0', '', NULL, '2025-04-13 14:45:23', '2025-04-13 14:45:23', NULL, '0', NULL, NULL),
(61, 'normal', 1, NULL, 'test', 'live_0IHMT_1', 0, 10, '0', '', NULL, '2025-04-13 14:45:34', '2025-04-13 14:45:34', NULL, '0', NULL, NULL),
(62, 'normal', 1, NULL, 'test', 'live_5CBV5_1', 0, 10, '0', '', NULL, '2025-04-13 14:46:17', '2025-04-13 14:46:17', NULL, '0', NULL, NULL),
(63, 'normal', 1, NULL, 'test', 'live_d1u05_1', 0, 10, '0', '', NULL, '2025-04-13 14:46:48', '2025-04-13 14:46:48', NULL, '0', NULL, NULL),
(64, 'normal', 1, NULL, 'test', 'live_fa4rT_1', 0, 10, '0', '', NULL, '2025-04-13 14:48:31', '2025-04-13 14:48:31', NULL, '0', NULL, NULL),
(65, 'normal', 1, NULL, 'test', 'live_wUt1g_1', 0, 10, '0', '', NULL, '2025-04-13 14:48:40', '2025-04-13 14:48:40', NULL, '0', NULL, NULL),
(66, 'normal', 1, NULL, 'test', 'live_2LZLm_1', 0, 10, '0', '', NULL, '2025-04-13 14:52:13', '2025-04-13 14:52:13', NULL, '0', NULL, NULL),
(67, 'normal', 1, NULL, 'test', 'live_sVhdQ_1', 0, 10, '0', '', NULL, '2025-04-13 14:52:23', '2025-04-13 14:52:23', NULL, '0', NULL, NULL),
(68, 'normal', 1, NULL, 'test', 'live_Y3UTS_1', 0, 10, '0', '', NULL, '2025-04-13 14:52:34', '2025-04-13 14:52:34', NULL, '0', NULL, NULL),
(69, 'normal', 1, NULL, 'test', 'live_Wtvqp_1', 0, 10, '0', '', NULL, '2025-04-13 14:52:41', '2025-04-13 14:52:41', NULL, '0', NULL, NULL),
(70, 'normal', 1, NULL, 'test', 'live_MkBtI_1', 0, 10, '0', '', NULL, '2025-04-13 14:52:52', '2025-04-13 14:52:52', NULL, '0', NULL, NULL),
(71, 'normal', 1, NULL, 'test', 'live_PXzHh_1', 0, 10, '0', '', NULL, '2025-04-13 14:52:57', '2025-04-13 18:39:13', NULL, '0', NULL, NULL),
(72, 'normal', 1, NULL, 'test', 'live_ZyiJP_1', 0, 10, '0', '', NULL, '2025-04-13 14:55:23', '2025-04-13 14:55:23', NULL, '0', NULL, NULL),
(73, 'normal', 1, NULL, 'test', 'live_P1uoG_1', 0, 10, '0', '', NULL, '2025-04-13 14:56:03', '2025-04-13 14:56:03', NULL, '0', NULL, NULL),
(74, 'normal', 2, NULL, 'test', 'live_6eCrm_2', 0, 10, '1', '', NULL, '2025-04-13 21:36:22', '2025-04-13 21:39:43', NULL, 'free_paid_subscribers', NULL, NULL),
(75, 'normal', 1, NULL, 'Test', 'live_3ei2u_1', 0, 19, '1', '', NULL, '2025-04-13 21:43:01', '2025-04-13 21:50:03', NULL, 'all_pay', NULL, NULL),
(76, 'normal', 1, NULL, 'Test', 'live_TgH9J_1', 0, 19, '0', '', NULL, '2025-04-13 21:43:04', '2025-04-13 21:43:04', NULL, '0', NULL, NULL),
(77, 'normal', 1, NULL, 'Test', 'live_0T30s_1', 0, 19, '0', '', NULL, '2025-04-13 21:43:13', '2025-04-13 21:43:13', NULL, '0', NULL, NULL),
(78, 'normal', 1, NULL, 'Test', 'live_UOMxc_1', 0, 19, '0', '', NULL, '2025-04-13 21:43:16', '2025-04-13 21:43:16', NULL, '0', NULL, NULL),
(79, 'normal', 1, NULL, 'Test', 'live_Urpc2_1', 0, 19, '0', '', NULL, '2025-04-13 21:43:18', '2025-04-13 21:43:18', NULL, '0', NULL, NULL),
(80, 'normal', 1, NULL, 'Test', 'live_fGWDC_1', 0, 19, '0', '', NULL, '2025-04-13 21:43:20', '2025-04-13 21:43:20', NULL, '0', NULL, NULL),
(81, 'normal', 1, NULL, 'Test', 'live_Iffe1_1', 0, 19, '0', '', NULL, '2025-04-13 21:43:20', '2025-04-13 21:43:20', NULL, '0', NULL, NULL),
(82, 'normal', 1, NULL, 'Test', 'live_62rej_1', 0, 19, '0', '', NULL, '2025-04-13 21:43:24', '2025-04-13 21:43:24', NULL, '0', NULL, NULL),
(83, 'normal', 1, NULL, 'Test', 'live_0P0GG_1', 0, 19, '0', '', NULL, '2025-04-13 21:44:11', '2025-04-13 21:44:11', NULL, '0', NULL, NULL),
(84, 'normal', 1, NULL, 'Test', 'live_w17PB_1', 0, 19, '0', '', NULL, '2025-04-13 21:44:29', '2025-04-13 21:44:29', NULL, '0', NULL, NULL),
(85, 'normal', 1, NULL, 'Test', 'live_h7s8f_1', 0, 19, '0', '', NULL, '2025-04-13 21:44:41', '2025-04-13 21:44:41', NULL, '0', NULL, NULL),
(86, 'normal', 1, NULL, 'Test', 'live_el4Cg_1', 0, 19, '0', '', NULL, '2025-04-13 21:45:31', '2025-04-13 21:45:31', NULL, '0', NULL, NULL),
(87, 'normal', 1, NULL, 'Test', 'live_Zz6lj_1', 0, 19, '0', '', NULL, '2025-04-13 21:45:52', '2025-04-13 21:45:52', NULL, '0', NULL, NULL),
(88, 'normal', 1, NULL, 'Test', 'live_rbWGQ_1', 0, 19, '0', '', NULL, '2025-04-13 21:46:37', '2025-04-13 21:46:37', NULL, '0', NULL, NULL),
(89, 'normal', 1, NULL, 'Test', 'live_lLkM8_1', 0, 19, '0', '', NULL, '2025-04-13 21:46:48', '2025-04-13 21:46:48', NULL, '0', NULL, NULL),
(90, 'normal', 1, NULL, 'Test', 'live_as6fI_1', 0, 19, '0', '', NULL, '2025-04-13 21:47:38', '2025-04-13 21:47:38', NULL, '0', NULL, NULL),
(91, 'normal', 1, NULL, 'Test', 'live_8FNvC_1', 0, 19, '0', '', NULL, '2025-04-13 21:47:50', '2025-04-13 21:47:50', NULL, '0', NULL, NULL),
(92, 'normal', 1, NULL, 'Test', 'live_O3N00_1', 0, 19, '1', '', NULL, '2025-04-13 21:48:52', '2025-04-13 21:53:15', NULL, '0', NULL, NULL),
(93, 'normal', 1, NULL, 'Test', 'live_vyNQt_1', 0, 19, '1', '', NULL, '2025-04-13 21:49:41', '2025-04-13 21:53:11', NULL, '0', NULL, NULL),
(94, 'normal', 1, NULL, 'Test', 'live_kj6cW_1', 0, 19, '1', '', NULL, '2025-04-13 21:49:53', '2025-04-13 21:52:39', NULL, '0', NULL, NULL),
(95, 'normal', 1, NULL, 'Test', 'live_sr2Sk_1', 0, 19, '1', '', NULL, '2025-04-13 21:50:43', '2025-04-13 21:53:07', NULL, '0', NULL, NULL),
(96, 'normal', 1, NULL, 'Test', 'live_Bqy44_1', 0, 19, '1', '', NULL, '2025-04-13 21:51:48', '2025-04-13 21:53:00', NULL, '0', NULL, NULL),
(97, 'normal', 1, NULL, 'Test', 'live_0DrCq_1', 0, 19, '1', '', NULL, '2025-04-13 21:52:08', '2025-04-13 21:52:56', NULL, '0', NULL, NULL),
(98, 'normal', 1, NULL, 'Test', 'live_jaNdb_1', 0, 19, '1', '', NULL, '2025-04-13 21:52:20', '2025-04-13 21:52:51', NULL, '0', NULL, NULL),
(99, 'normal', 1, NULL, 'Test', 'live_P3AvJ_1', 0, 19, '1', '', NULL, '2025-04-13 21:52:30', '2025-04-13 21:52:46', NULL, '0', NULL, NULL),
(100, 'normal', 1, NULL, 'Test', 'live_4xUDt_1', 0, 7, '1', '', NULL, '2025-04-13 21:53:46', '2025-04-14 11:21:37', NULL, 'free_paid_subscribers', NULL, NULL),
(101, 'normal', 1, NULL, 'Test', 'live_83em8_1', 0, 7, '0', '', NULL, '2025-04-13 21:54:02', '2025-04-13 21:54:02', NULL, '0', NULL, NULL),
(102, 'normal', 1, NULL, 'Test', 'live_Rwxwz_1', 0, 7, '0', '', NULL, '2025-04-13 21:54:45', '2025-04-13 21:54:45', NULL, '0', NULL, NULL),
(103, 'normal', 1, NULL, 'Test', 'live_lMcrT_1', 0, 7, '0', '', NULL, '2025-04-13 21:54:54', '2025-04-13 21:54:54', NULL, '0', NULL, NULL),
(104, 'normal', 1, NULL, 'Test', 'live_H0Rf4_1', 0, 7, '0', '', NULL, '2025-04-13 21:56:51', '2025-04-13 21:56:51', NULL, '0', NULL, NULL),
(105, 'normal', 1, NULL, 'Test', 'live_Kzjce_1', 0, 7, '0', '', NULL, '2025-04-13 21:57:26', '2025-04-13 21:57:26', NULL, '0', NULL, NULL),
(106, 'normal', 1, NULL, 'Test', 'live_7EDDY_1', 0, 7, '0', '', NULL, '2025-04-13 21:58:14', '2025-04-13 21:58:14', NULL, '0', NULL, NULL),
(107, 'normal', 1, NULL, 'Test', 'live_jG49M_1', 0, 7, '0', '', NULL, '2025-04-13 21:58:47', '2025-04-13 21:58:47', NULL, '0', NULL, NULL),
(108, 'normal', 1, NULL, 'Test', 'live_nZNcd_1', 0, 7, '0', '', NULL, '2025-04-13 21:58:56', '2025-04-13 21:58:56', NULL, '0', NULL, NULL),
(109, 'normal', 1, NULL, 'Test', 'live_8jTZi_1', 0, 7, '0', '', NULL, '2025-04-13 21:59:42', '2025-04-13 21:59:42', NULL, '0', NULL, NULL),
(110, 'normal', 1, NULL, 'Test', 'live_lyI05_1', 0, 7, '0', '', NULL, '2025-04-13 21:59:46', '2025-04-13 21:59:46', NULL, '0', NULL, NULL),
(111, 'normal', 1, NULL, 'Test', 'live_29sv7_1', 0, 7, '0', '', NULL, '2025-04-13 22:00:36', '2025-04-13 22:00:36', NULL, '0', NULL, NULL),
(112, 'normal', 1, NULL, 'Test', 'live_cBooK_1', 0, 7, '0', '', NULL, '2025-04-13 22:00:52', '2025-04-13 22:00:52', NULL, '0', NULL, NULL),
(113, 'normal', 1, NULL, 'Test', 'live_cMfCH_1', 0, 7, '0', '', NULL, '2025-04-13 22:04:59', '2025-04-13 22:04:59', NULL, '0', NULL, NULL),
(114, 'normal', 1, NULL, 'Test', 'live_kuT5B_1', 0, 7, '0', '', NULL, '2025-04-13 22:05:05', '2025-04-13 22:05:05', NULL, '0', NULL, NULL),
(115, 'normal', 1, NULL, 'Test', 'live_BuKdC_1', 0, 7, '0', '', NULL, '2025-04-13 22:05:16', '2025-04-13 22:05:16', NULL, '0', NULL, NULL),
(116, 'normal', 1, NULL, 'Test', 'live_RxvFc_1', 0, 7, '0', '', NULL, '2025-04-13 22:07:52', '2025-04-13 22:07:52', NULL, '0', NULL, NULL),
(117, 'normal', 1, NULL, 'Test', 'live_a6n4d_1', 0, 7, '0', '', NULL, '2025-04-13 22:08:39', '2025-04-13 22:08:39', NULL, '0', NULL, NULL),
(118, 'normal', 1, NULL, 'Test', 'live_dNGKy_1', 0, 7, '0', '', NULL, '2025-04-13 22:15:34', '2025-04-13 22:15:34', NULL, '0', NULL, NULL),
(119, 'normal', 1, NULL, 'Test', 'live_R7Jhc_1', 0, 7, '0', '', NULL, '2025-04-13 22:19:55', '2025-04-13 22:19:55', NULL, '0', NULL, NULL),
(120, 'normal', 1, NULL, 'Test', 'live_uQi6z_1', 0, 7, '0', '', NULL, '2025-04-13 22:29:48', '2025-04-13 22:29:48', NULL, '0', NULL, NULL),
(121, 'normal', 1, NULL, 'Test', 'live_oEMM0_1', 0, 7, '0', '', NULL, '2025-04-13 22:30:26', '2025-04-13 22:30:26', NULL, '0', NULL, NULL),
(122, 'normal', 1, NULL, 'Test', 'live_lodZG_1', 0, 7, '0', '', NULL, '2025-04-13 22:43:33', '2025-04-13 22:43:33', NULL, '0', NULL, NULL),
(123, 'normal', 1, NULL, 'Test', 'live_gNfMj_1', 0, 7, '0', '', NULL, '2025-04-13 22:46:21', '2025-04-13 22:46:21', NULL, '0', NULL, NULL),
(124, 'normal', 1, NULL, 'Test', 'live_YDa8l_1', 0, 7, '0', '', NULL, '2025-04-13 23:02:54', '2025-04-13 23:02:54', NULL, '0', NULL, NULL),
(125, 'normal', 1, NULL, 'Test', 'live_WqSfT_1', 0, 7, '0', '', NULL, '2025-04-13 23:05:27', '2025-04-13 23:05:27', NULL, '0', NULL, NULL),
(126, 'normal', 1, NULL, 'Test', 'live_Armvk_1', 0, 7, '0', '', NULL, '2025-04-13 23:08:02', '2025-04-13 23:08:02', NULL, '0', NULL, NULL),
(127, 'normal', 1, NULL, 'Test', 'live_KNVWs_1', 0, 7, '0', '', NULL, '2025-04-14 00:33:40', '2025-04-14 00:33:40', NULL, '0', NULL, NULL),
(128, 'normal', 1, NULL, 'Test', 'live_Hnu1p_1', 0, 7, '0', '', NULL, '2025-04-14 00:33:46', '2025-04-14 00:33:46', NULL, '0', NULL, NULL),
(129, 'normal', 1, NULL, 'Test', 'live_oY5BR_1', 0, 7, '0', '', NULL, '2025-04-14 01:00:49', '2025-04-14 01:00:49', NULL, '0', NULL, NULL),
(130, 'normal', 1, NULL, 'Test', 'live_5t4I5_1', 0, 7, '0', '', NULL, '2025-04-14 10:21:41', '2025-04-14 10:21:41', NULL, '0', NULL, NULL),
(131, 'normal', 1, NULL, 'Test', 'live_mZAmu_1', 0, 7, '0', '', NULL, '2025-04-14 10:21:45', '2025-04-14 10:21:45', NULL, '0', NULL, NULL),
(132, 'normal', 1, NULL, 'Test', 'live_bd9ou_1', 0, 7, '0', '', NULL, '2025-04-14 10:29:11', '2025-04-14 10:29:11', NULL, '0', NULL, NULL),
(133, 'normal', 1, NULL, 'Test', 'live_7Gcen_1', 0, 7, '0', '', NULL, '2025-04-14 10:29:17', '2025-04-14 10:29:17', NULL, '0', NULL, NULL),
(134, 'normal', 1, NULL, 'Test', 'live_XbhUb_1', 0, 7, '0', '', NULL, '2025-04-14 10:33:55', '2025-04-14 10:33:55', NULL, '0', NULL, NULL),
(135, 'normal', 1, NULL, 'Test', 'live_Fi8Mo_1', 0, 7, '0', '', NULL, '2025-04-14 10:37:06', '2025-04-14 10:37:06', NULL, '0', NULL, NULL),
(136, 'normal', 1, NULL, 'Test', 'live_WbjNs_1', 0, 7, '0', '', NULL, '2025-04-14 10:40:10', '2025-04-14 10:40:10', NULL, '0', NULL, NULL),
(137, 'normal', 1, NULL, 'Test', 'live_dGKlc_1', 0, 7, '0', '', NULL, '2025-04-14 10:40:13', '2025-04-14 10:40:13', NULL, '0', NULL, NULL),
(138, 'normal', 1, NULL, 'Test', 'live_Usiwf_1', 0, 7, '0', '', NULL, '2025-04-14 10:43:31', '2025-04-14 10:43:31', NULL, '0', NULL, NULL),
(139, 'normal', 1, NULL, 'Test', 'live_bt7LI_1', 0, 7, '0', '', NULL, '2025-04-14 10:49:10', '2025-04-14 10:49:10', NULL, '0', NULL, NULL),
(140, 'normal', 1, NULL, 'Test', 'live_SWkyV_1', 0, 7, '0', '', NULL, '2025-04-14 11:15:59', '2025-04-14 11:15:59', NULL, '0', NULL, NULL),
(141, 'normal', 1, NULL, 'Test', 'live_xWaIG_1', 0, 5, '1', '', NULL, '2025-04-14 11:16:12', '2025-04-14 11:21:12', NULL, 'free_paid_subscribers', NULL, NULL),
(142, 'normal', 1, NULL, 'Test', 'live_s9D33_1', 0, 5, '1', '', NULL, '2025-04-14 11:16:14', '2025-04-14 11:21:23', NULL, '0', NULL, NULL),
(143, 'normal', 1, NULL, 'test', 'live_y7Fe6_1', 0, 12, '1', '', NULL, '2025-04-14 12:21:04', '2025-04-14 12:48:55', NULL, 'free_paid_subscribers', NULL, NULL),
(144, 'normal', 1, NULL, 'test', 'live_oIqEO_1', 0, 12, '0', '', NULL, '2025-04-14 12:21:06', '2025-04-14 12:21:06', NULL, '0', NULL, NULL),
(145, 'normal', 1, NULL, 'test', 'live_nejft_1', 0, 12, '0', '', NULL, '2025-04-14 12:21:20', '2025-04-14 12:21:20', NULL, '0', NULL, NULL),
(146, 'normal', 1, NULL, 'test', 'live_GuhLv_1', 0, 12, '0', '', NULL, '2025-04-14 12:21:27', '2025-04-14 12:21:27', NULL, '0', NULL, NULL),
(147, 'normal', 1, NULL, 'test', 'live_aPxH9_1', 0, 12, '0', '', NULL, '2025-04-14 12:22:33', '2025-04-14 12:22:33', NULL, '0', NULL, NULL),
(148, 'normal', 1, NULL, 'test', 'live_3cnsh_1', 0, 12, '0', '', NULL, '2025-04-14 12:23:29', '2025-04-14 12:23:29', NULL, '0', NULL, NULL),
(149, 'normal', 1, NULL, 'test', 'live_MV2Hn_1', 0, 12, '0', '', NULL, '2025-04-14 12:23:42', '2025-04-14 12:23:42', NULL, '0', NULL, NULL),
(150, 'normal', 1, NULL, 'test', 'live_sjOWv_1', 0, 12, '0', '', NULL, '2025-04-14 12:24:51', '2025-04-14 12:24:51', NULL, '0', NULL, NULL),
(151, 'normal', 1, NULL, 'test', 'live_uMkdz_1', 0, 12, '0', '', NULL, '2025-04-14 12:25:09', '2025-04-14 12:25:09', NULL, '0', NULL, NULL),
(152, 'normal', 1, NULL, 'test', 'live_Yebeo_1', 0, 12, '0', '', NULL, '2025-04-14 12:26:05', '2025-04-14 12:26:05', NULL, '0', NULL, NULL),
(153, 'normal', 1, NULL, 'test', 'live_VNYlx_1', 0, 12, '0', '', NULL, '2025-04-14 12:27:55', '2025-04-14 12:27:55', NULL, '0', NULL, NULL),
(154, 'normal', 1, NULL, 'test', 'live_l6c30_1', 0, 12, '0', '', NULL, '2025-04-14 12:28:34', '2025-04-14 12:28:34', NULL, '0', NULL, NULL),
(155, 'normal', 1, NULL, 'test', 'live_zciau_1', 0, 12, '0', '', NULL, '2025-04-14 12:28:49', '2025-04-14 12:28:49', NULL, '0', NULL, NULL),
(156, 'normal', 1, NULL, 'test', 'live_BT4kl_1', 0, 12, '0', '', NULL, '2025-04-14 12:29:17', '2025-04-14 12:29:17', NULL, '0', NULL, NULL),
(157, 'normal', 1, NULL, 'test', 'live_ac57R_1', 0, 12, '0', '', NULL, '2025-04-14 12:30:08', '2025-04-14 12:30:08', NULL, '0', NULL, NULL),
(158, 'normal', 1, NULL, 'test', 'live_07XWG_1', 0, 12, '0', '', NULL, '2025-04-14 12:30:35', '2025-04-14 12:30:35', NULL, '0', NULL, NULL),
(159, 'normal', 1, NULL, 'test', 'live_DRjMc_1', 0, 12, '0', '', NULL, '2025-04-14 12:30:53', '2025-04-14 12:30:53', NULL, '0', NULL, NULL),
(160, 'normal', 1, NULL, 'test', 'live_WOOqS_1', 0, 12, '0', '', NULL, '2025-04-14 12:32:41', '2025-04-14 12:32:41', NULL, '0', NULL, NULL),
(161, 'normal', 1, NULL, 'test', 'live_exsDL_1', 0, 12, '0', '', NULL, '2025-04-14 12:33:08', '2025-04-14 12:33:08', NULL, '0', NULL, NULL),
(162, 'normal', 1, NULL, 'test', 'live_gaDzB_1', 0, 12, '0', '', NULL, '2025-04-14 12:33:40', '2025-04-14 12:33:40', NULL, '0', NULL, NULL),
(163, 'normal', 1, NULL, 'test', 'live_N3uJh_1', 0, 12, '0', '', NULL, '2025-04-14 12:34:43', '2025-04-14 12:34:43', NULL, '0', NULL, NULL),
(164, 'normal', 1, NULL, 'test', 'live_vabjz_1', 0, 12, '0', '', NULL, '2025-04-14 12:34:50', '2025-04-14 12:34:50', NULL, '0', NULL, NULL),
(165, 'normal', 1, NULL, 'test', 'live_XoOO7_1', 0, 12, '0', '', NULL, '2025-04-14 12:35:41', '2025-04-14 12:35:41', NULL, '0', NULL, NULL),
(166, 'normal', 1, NULL, 'test', 'live_rOMgZ_1', 0, 12, '0', '', NULL, '2025-04-14 12:35:56', '2025-04-14 12:35:56', NULL, '0', NULL, NULL),
(167, 'normal', 1, NULL, 'test', 'live_X4u3a_1', 0, 12, '0', '', NULL, '2025-04-14 12:37:12', '2025-04-14 12:37:12', NULL, '0', NULL, NULL),
(168, 'normal', 1, NULL, 'test', 'live_vaTtU_1', 0, 12, '0', '', NULL, '2025-04-14 12:38:38', '2025-04-14 12:38:38', NULL, '0', NULL, NULL),
(169, 'normal', 1, NULL, 'test', 'live_nndE7_1', 0, 12, '0', '', NULL, '2025-04-14 12:40:03', '2025-04-14 12:40:03', NULL, '0', NULL, NULL),
(170, 'normal', 1, NULL, 'test', 'live_Edw3T_1', 0, 12, '0', '', NULL, '2025-04-14 12:41:09', '2025-04-14 12:41:09', NULL, '0', NULL, NULL),
(171, 'normal', 1, NULL, 'test', 'live_xGj21_1', 0, 12, '0', '', NULL, '2025-04-14 12:42:16', '2025-04-14 12:42:16', NULL, '0', NULL, NULL),
(172, 'normal', 1, NULL, 'test', 'live_BnLgF_1', 0, 12, '0', '', NULL, '2025-04-14 12:43:12', '2025-04-14 12:43:12', NULL, '0', NULL, NULL),
(173, 'normal', 1, NULL, 'test', 'live_R7Nzy_1', 0, 12, '0', '', NULL, '2025-04-14 12:43:40', '2025-04-14 12:43:40', NULL, '0', NULL, NULL),
(174, 'normal', 1, NULL, 'test', 'live_spWQQ_1', 0, 12, '1', '', NULL, '2025-04-14 12:47:17', '2025-04-14 12:50:23', NULL, '0', NULL, NULL),
(175, 'normal', 1, NULL, 'Test', 'live_Qdy44_1', 0, 18, '0', '', NULL, '2025-04-14 13:12:47', '2025-04-14 13:21:01', NULL, 'free_paid_subscribers', NULL, NULL),
(176, 'normal', 1, NULL, 'Test', 'live_iXZ65_1', 0, 18, '0', '', NULL, '2025-04-14 13:12:55', '2025-04-14 13:12:55', NULL, '0', NULL, NULL),
(177, 'normal', 1, NULL, 'Test', 'live_QEkY2_1', 0, 18, '0', '', NULL, '2025-04-14 13:13:01', '2025-04-14 13:13:01', NULL, '0', NULL, NULL),
(178, 'normal', 1, NULL, 'Test', 'live_IzXdD_1', 0, 18, '0', '', NULL, '2025-04-14 13:19:35', '2025-04-14 13:19:35', NULL, '0', NULL, NULL),
(179, 'normal', 1, NULL, 'Test', 'live_cG9Ve_1', 0, 18, '0', '', NULL, '2025-04-14 13:20:24', '2025-04-14 13:20:24', NULL, '0', NULL, NULL),
(180, 'normal', 1, NULL, 'Test', 'live_2qnVi_1', 0, 18, '1', '', NULL, '2025-04-14 13:20:54', '2025-04-14 13:48:55', NULL, '0', NULL, NULL),
(181, 'normal', 1, NULL, 'Test', 'live_Yc7pQ_1', 0, 18, '0', '', NULL, '2025-04-14 13:21:41', '2025-04-14 13:21:41', NULL, '0', NULL, NULL),
(182, 'normal', 1, NULL, 'Test', 'live_CrSCa_1', 0, 18, '0', '', NULL, '2025-04-14 13:24:10', '2025-04-14 13:24:10', NULL, '0', NULL, NULL),
(183, 'normal', 1, NULL, 'Test', 'live_1sJpA_1', 0, 18, '0', '', NULL, '2025-04-14 13:25:31', '2025-04-14 13:25:31', NULL, '0', NULL, NULL),
(184, 'normal', 1, NULL, 'Test', 'live_sxjnV_1', 0, 18, '0', '', NULL, '2025-04-14 13:27:11', '2025-04-14 13:27:11', NULL, '0', NULL, NULL),
(185, 'normal', 1, NULL, 'Test', 'live_JEURd_1', 0, 18, '0', '', NULL, '2025-04-14 13:27:39', '2025-04-14 13:27:39', NULL, '0', NULL, NULL),
(186, 'normal', 1, NULL, 'Test', 'live_iw3NG_1', 0, 18, '0', '', NULL, '2025-04-14 13:28:55', '2025-04-14 13:28:55', NULL, '0', NULL, NULL),
(187, 'normal', 1, NULL, 'Test', 'live_QUVWr_1', 0, 10, '0', '', NULL, '2025-04-14 14:46:47', '2025-04-14 14:52:46', NULL, 'free_paid_subscribers', NULL, NULL),
(188, 'normal', 1, NULL, 'Testi', 'live_rxno7_1', 0, 12, '0', '', NULL, '2025-04-14 14:55:54', '2025-04-14 15:05:17', NULL, 'free_paid_subscribers', NULL, NULL),
(189, 'normal', 2, NULL, 'dfdf', 'live_F9ye0_2', 0, 5, '0', '', NULL, '2025-04-14 15:40:20', '2025-04-14 15:40:27', NULL, 'all_pay', NULL, NULL),
(190, 'normal', 1, NULL, 'Testing', 'live_9QOXF_1', 0, 6, '1', '', NULL, '2025-04-14 18:09:32', '2025-04-14 18:10:30', NULL, 'free_paid_subscribers', NULL, NULL),
(191, 'normal', 1, NULL, 'Testing', 'live_M9GJ9_1', 0, 5, '1', '', NULL, '2025-04-14 18:32:03', '2025-04-14 18:48:56', NULL, 'free_paid_subscribers', NULL, NULL),
(192, 'normal', 2, NULL, 'test', 'live_92VbR_2', 0, 5, '1', '', NULL, '2025-04-14 19:06:02', '2025-04-14 19:07:01', NULL, 'all_pay', NULL, NULL),
(193, 'normal', 1, NULL, 'testing', 'live_rLrK8_1', 0, 7, '1', '', NULL, '2025-04-14 19:46:44', '2025-04-14 20:09:43', NULL, 'free_paid_subscribers', NULL, NULL),
(194, 'normal', 1, NULL, 'Testing', 'live_1', 0, 10, '1', '', NULL, '2025-04-14 20:10:02', '2025-04-14 20:32:29', NULL, 'free_paid_subscribers', NULL, NULL),
(195, 'normal', 1, NULL, 'Testing', 'live_1', 0, 18, '1', '', NULL, '2025-04-14 20:35:02', '2025-04-14 20:42:26', NULL, 'free_paid_subscribers', NULL, NULL),
(196, 'normal', 1, NULL, 'Test', 'live_1', 0, 8, '1', '', NULL, '2025-04-14 20:44:29', '2025-04-14 20:51:17', NULL, 'free_paid_subscribers', NULL, NULL),
(197, 'normal', 1, NULL, 'Testing', 'live_1', 0, 7, '1', '', NULL, '2025-04-14 21:01:10', '2025-04-14 22:01:48', NULL, 'free_paid_subscribers', NULL, NULL),
(198, 'normal', 2, NULL, 'no', 'live_2', 0, 5, '0', '', NULL, '2025-04-14 22:13:15', '2025-04-14 22:13:21', NULL, 'all_pay', NULL, NULL),
(199, 'normal', 2, NULL, 'Hi', 'live_2', 0, 5, '1', '', NULL, '2025-04-14 22:17:02', '2025-04-14 22:19:15', NULL, 'all_pay', NULL, NULL),
(200, 'normal', 2, NULL, 'Noamn', 'live_2', 0, 5, '1', '', NULL, '2025-04-14 22:26:13', '2025-04-14 22:28:33', NULL, 'all_pay', NULL, NULL),
(201, 'normal', 2, NULL, 'hi', 'live_2', 0, 5, '1', '', NULL, '2025-04-14 22:29:56', '2025-04-14 22:31:16', NULL, 'all_pay', NULL, NULL),
(202, 'normal', 2, NULL, 'Test', 'live_2', 0, 8, '0', '', NULL, '2025-04-14 22:32:44', '2025-04-14 22:34:02', NULL, 'free_paid_subscribers', NULL, NULL),
(203, 'normal', 1, NULL, 'hi', 'live_1', 0, 5, '1', '', NULL, '2025-04-25 01:20:31', '2025-04-25 01:24:59', NULL, 'all_pay', NULL, NULL),
(204, 'normal', 1, NULL, 'Hi', 'live_1', 0, 5, '1', '', NULL, '2025-04-25 01:22:42', '2025-04-25 01:24:42', NULL, 'all_pay', NULL, NULL),
(205, 'normal', 1, NULL, 'Hi', 'live_1', 0, 5, '1', '', NULL, '2025-04-25 08:14:15', '2025-04-25 08:14:54', NULL, 'all_pay', NULL, NULL),
(206, 'normal', 1, NULL, 'Hi', 'live_1', 0, 5, '1', '', NULL, '2025-04-25 13:29:08', '2025-04-25 13:30:17', NULL, 'all_pay', NULL, NULL),
(207, 'normal', 1, NULL, 'hu', 'live_1', 0, 5, '0', '', NULL, '2025-04-26 22:48:06', '2025-04-26 22:48:14', NULL, 'all_pay', NULL, NULL),
(208, 'normal', 2, NULL, 'Hi', 'live_2', 0, 5, '1', '', NULL, '2025-04-26 22:49:38', '2025-04-26 22:51:55', NULL, 'all_pay', NULL, NULL),
(209, 'normal', 2, NULL, 'Bi', 'live_2', 0, 8, '1', '', NULL, '2025-04-26 22:52:12', '2025-04-26 22:56:37', NULL, 'all_pay', NULL, NULL),
(210, 'normal', 1, NULL, 'Hi', 'live_1', 0, 5, '1', '', NULL, '2025-05-01 17:01:26', '2025-05-01 17:03:40', NULL, 'all_pay', NULL, NULL),
(211, 'normal', 1, NULL, 'Hi', 'live_1', 0, 12, '1', '', NULL, '2025-05-03 00:04:09', '2025-05-03 00:05:21', NULL, 'all_pay', NULL, NULL),
(212, 'normal', 1, NULL, 'Hu', 'live_1', 0, 5, '1', '', NULL, '2025-05-03 00:06:00', '2025-05-03 00:06:59', NULL, 'all_pay', NULL, NULL),
(213, 'normal', 2, NULL, 'Hi', 'live_2', 0, 5, '1', '', NULL, '2025-05-03 00:07:36', '2025-05-03 00:12:10', NULL, 'all_pay', NULL, NULL),
(214, 'normal', 1, NULL, 'Hi', 'live_1', 0, 22, '1', '', NULL, '2025-05-03 16:18:42', '2025-05-03 16:25:12', NULL, 'all_pay', NULL, NULL),
(215, 'normal', 2, NULL, 'Hi', 'live_2', 0, 5, '0', '', NULL, '2025-05-08 08:59:15', '2025-05-08 09:00:11', NULL, 'all_pay', NULL, NULL),
(216, 'normal', 2, NULL, 'Hi', 'live_2', 0, 5, '1', '', NULL, '2025-05-08 23:41:20', '2025-05-08 23:42:31', NULL, 'all_pay', NULL, NULL),
(217, 'normal', 1, NULL, 'Hu', 'live_1', 0, 20, '1', '', NULL, '2025-05-08 23:54:03', '2025-05-08 23:55:03', NULL, 'all_pay', NULL, NULL),
(218, 'normal', 2, NULL, 'hello', 'live_2', 0, 5, '1', '', NULL, '2025-05-08 23:57:02', '2025-05-08 23:57:23', NULL, 'all_pay', NULL, NULL),
(219, 'normal', 2, NULL, 'Hi', 'live_2', 0, 5, '1', '', NULL, '2025-05-09 00:13:30', '2025-05-09 00:22:39', NULL, 'all_pay', NULL, NULL),
(220, 'normal', 2, NULL, 'To', 'live_2', 0, 12, '1', '', NULL, '2025-05-11 22:27:19', '2025-05-11 22:29:30', NULL, 'all_pay', NULL, NULL),
(221, 'normal', 2, NULL, 'Hi', 'live_2', 0, 50, '1', '', NULL, '2025-05-11 23:09:55', '2025-05-11 23:13:15', NULL, 'all_pay', NULL, NULL),
(222, 'normal', 2, NULL, 'Hi', 'live_2', 0, 12, '1', '', NULL, '2025-05-11 23:26:38', '2025-05-11 23:28:04', NULL, 'all_pay', NULL, NULL),
(223, 'normal', 2, NULL, 'Hh', 'live_2', 0, 5, '1', '', NULL, '2025-05-11 23:28:24', '2025-05-11 23:39:54', NULL, 'all_pay', NULL, NULL),
(224, 'normal', 1, NULL, 'Hhsd', 'live_1', 0, 5, '1', '', NULL, '2025-05-12 17:56:51', '2025-05-12 18:07:57', NULL, 'all_pay', NULL, NULL),
(225, 'normal', 2, NULL, 'Bbhs', 'live_2', 0, 12, '1', '', NULL, '2025-05-12 17:58:05', '2025-05-12 17:59:09', NULL, 'all_pay', NULL, NULL),
(226, 'normal', 1, NULL, 'dsf', 'live_1', 0, 33, '0', '', NULL, '2025-05-12 17:58:07', '2025-05-12 17:58:31', NULL, 'all_pay', NULL, NULL),
(227, 'normal', 1, NULL, 'Bhs', 'live_1', 0, 5, '1', '', NULL, '2025-05-12 22:09:24', '2025-05-12 22:11:00', NULL, 'all_pay', NULL, NULL),
(228, 'normal', 1, NULL, 'Hhg', 'live_1', 0, 5, '1', '', NULL, '2025-05-12 22:20:37', '2025-05-12 23:08:17', NULL, 'all_pay', NULL, NULL),
(229, 'normal', 8, NULL, 'test', 'live_8', 0, 5, '0', '', NULL, '2025-05-12 22:24:55', '2025-05-12 23:44:13', NULL, 'all_pay', NULL, NULL),
(230, 'normal', 1, NULL, 'Jalpur', 'live_1', 0, 5, '0', '', NULL, '2025-05-12 23:13:04', '2025-05-13 01:00:55', NULL, 'all_pay', NULL, NULL),
(231, 'normal', 2, NULL, 'Jjhs', 'live_2', 0, 5, '0', '', NULL, '2025-05-12 23:33:24', '2025-05-12 23:55:49', NULL, 'all_pay', NULL, NULL),
(232, 'normal', 2, NULL, 'Ccc', 'live_2', 0, 5, '0', '', NULL, '2025-05-12 23:56:25', '2025-05-13 00:40:33', NULL, 'all_pay', NULL, NULL),
(233, 'normal', 2, NULL, 'vvvgg', 'live_2', 0, 5, '1', '', NULL, '2025-05-13 00:48:19', '2025-05-13 01:50:31', NULL, 'all_pay', NULL, NULL),
(234, 'normal', 1, NULL, 'Fff', 'live_1', 0, 5, '1', '', NULL, '2025-05-13 01:01:41', '2025-05-13 01:16:38', NULL, 'all_pay', NULL, NULL),
(235, 'normal', 2, NULL, 'hhh', 'live_2', 0, 5, '0', '', NULL, '2025-05-13 01:21:33', '2025-05-13 01:21:57', NULL, 'all_pay', NULL, NULL),
(236, 'normal', 1, NULL, 'yuuii', 'live_1', 0, 5, '0', '', NULL, '2025-05-13 01:23:39', '2025-05-13 01:31:37', NULL, 'all_pay', NULL, NULL),
(237, 'normal', 2, NULL, 'yu', 'live_2', 0, 5, '1', '', NULL, '2025-05-13 01:43:44', '2025-05-13 01:50:16', NULL, 'all_pay', NULL, NULL),
(238, 'normal', 2, NULL, 'fgh', 'live_2', 0, 5, '1', '', NULL, '2025-05-13 01:51:33', '2025-05-13 01:54:16', NULL, 'all_pay', NULL, NULL),
(239, 'normal', 1, NULL, 'nbv', 'live_1', 0, 6, '1', '', NULL, '2025-05-13 01:52:36', '2025-05-13 01:53:16', NULL, 'all_pay', NULL, NULL),
(240, 'normal', 2, NULL, 'Bb', 'live_2', 0, 5, '0', '', NULL, '2025-05-13 10:01:04', '2025-05-13 10:05:48', NULL, 'all_pay', NULL, NULL),
(241, 'normal', 1, NULL, 'ggf', 'live_1', 0, 5, '0', '', NULL, '2025-05-13 10:03:12', '2025-05-13 10:20:14', NULL, 'all_pay', NULL, NULL),
(242, 'normal', 2, NULL, 'Hu', 'live_2', 0, 5, '1', '', NULL, '2025-05-13 10:25:40', '2025-05-13 11:08:34', NULL, 'all_pay', NULL, NULL),
(243, 'normal', 1, NULL, 'hhs', 'live_1', 0, 5, '0', '', NULL, '2025-05-13 10:26:53', '2025-05-13 11:04:41', NULL, 'all_pay', NULL, NULL),
(244, 'normal', 2, NULL, 'Hhd', 'live_2', 0, 5, '0', '', NULL, '2025-05-13 11:46:44', '2025-05-13 11:46:44', NULL, 'all_pay', NULL, NULL),
(245, 'normal', 2, NULL, 'Hhs', 'live_2', 0, 5, '0', '', NULL, '2025-05-13 11:47:19', '2025-05-13 12:14:40', NULL, 'all_pay', NULL, NULL),
(246, 'normal', 1, NULL, 'Bh', 'live_1', 0, 5, '1', '', NULL, '2025-05-13 11:47:57', '2025-05-13 12:48:35', NULL, 'all_pay', NULL, NULL),
(247, 'normal', 2, NULL, 'Nnjs', 'live_2', 0, 5, '1', '', NULL, '2025-05-13 12:17:13', '2025-05-13 12:48:22', NULL, 'all_pay', NULL, NULL),
(248, 'normal', 1, NULL, 'Hjjaa', 'live_1', 0, 5, '0', '', NULL, '2025-05-13 14:43:05', '2025-05-13 15:13:18', NULL, 'all_pay', NULL, NULL),
(249, 'normal', 2, NULL, 'Arif', 'live_2', 0, 5, '0', '', NULL, '2025-05-13 16:51:08', '2025-05-13 16:52:49', NULL, 'all_pay', NULL, NULL),
(250, 'normal', 2, NULL, 'Ady', 'live_2', 0, 5, '1', '', NULL, '2025-05-13 17:46:00', '2025-05-13 17:50:54', NULL, 'all_pay', NULL, NULL),
(251, 'normal', 1, NULL, 'Nnns', 'live_1', 0, 12, '1', '', NULL, '2025-05-13 17:47:35', '2025-05-13 17:50:45', NULL, 'all_pay', NULL, NULL),
(252, 'normal', 1, NULL, 'Hhdhd', 'live_1', 0, 13, '1', '', NULL, '2025-05-13 17:51:08', '2025-05-13 17:54:39', NULL, 'all_pay', NULL, NULL),
(253, 'normal', 2, NULL, 'Arif', 'live_2', 0, 10, '0', '', NULL, '2025-05-13 17:51:17', '2025-05-13 17:55:47', NULL, 'all_pay', NULL, NULL),
(254, 'normal', 1, NULL, 'Hi', 'live_1', 0, 12, '1', '', NULL, '2025-05-13 18:09:26', '2025-05-13 18:17:58', NULL, 'all_pay', NULL, NULL),
(255, 'normal', 2, NULL, 'Hhhd', 'live_2', 0, 20, '1', '', NULL, '2025-05-13 18:15:42', '2025-05-13 18:17:53', NULL, 'all_pay', NULL, NULL),
(256, 'normal', 2, NULL, 'Arif', 'live_2', 0, 5, '1', '', NULL, '2025-05-13 20:17:35', '2025-05-13 20:23:38', NULL, 'all_pay', NULL, NULL),
(257, 'normal', 1, NULL, 'Hh', 'live_1', 0, 5, '1', '', NULL, '2025-05-13 20:17:47', '2025-05-13 20:23:32', NULL, 'all_pay', NULL, NULL),
(258, 'normal', 1, NULL, 'Bhs', 'live_1', 0, 5, '1', '', NULL, '2025-05-13 21:08:33', '2025-05-13 21:13:14', NULL, 'all_pay', NULL, NULL),
(259, 'normal', 1, NULL, 'Hi', 'live_1', 0, 5, '1', '', NULL, '2025-05-13 21:13:31', '2025-05-13 21:14:41', NULL, 'all_pay', NULL, NULL),
(260, 'normal', 1, NULL, 'Hi', 'live_1', 0, 12, '1', '', NULL, '2025-05-13 21:42:56', '2025-05-13 21:44:21', NULL, 'all_pay', NULL, NULL),
(261, 'normal', 1, NULL, 'Fggh', 'live_1', 0, 5, '1', '', NULL, '2025-05-13 22:05:53', '2025-05-13 22:18:36', NULL, 'all_pay', NULL, NULL),
(262, 'normal', 1, NULL, 'Hhs', 'live_1', 0, 5, '1', '', NULL, '2025-05-13 22:18:52', '2025-05-13 22:20:22', NULL, 'all_pay', NULL, NULL),
(263, 'normal', 1, NULL, 'Hhhsd', 'live_1', 0, 12, '1', '', NULL, '2025-05-13 22:21:08', '2025-05-13 22:42:38', NULL, 'all_pay', NULL, NULL),
(264, 'normal', 2, NULL, 'Test stream by umer', 'live_2', 0, 6, '1', '', NULL, '2025-05-14 00:14:16', '2025-05-14 00:14:28', NULL, 'all_pay', NULL, NULL),
(265, 'normal', 2, NULL, 'Greet', 'live_2', 0, 5, '1', '', NULL, '2025-05-14 01:03:00', '2025-05-14 01:03:34', NULL, 'all_pay', NULL, NULL),
(266, 'normal', 1, NULL, 'G', 'live_1', 0, 5, '1', '', NULL, '2025-05-14 01:03:56', '2025-05-14 01:05:30', NULL, 'all_pay', NULL, NULL),
(267, 'normal', 2, NULL, 'gret', 'live_2', 0, 5, '1', '', NULL, '2025-05-14 01:30:38', '2025-05-14 01:30:48', NULL, 'all_pay', NULL, NULL),
(268, 'normal', 1, NULL, 'Hu', 'live_1', 0, 5, '1', '', NULL, '2025-05-14 09:34:52', '2025-05-14 10:30:12', NULL, 'all_pay', NULL, NULL),
(269, 'normal', 2, NULL, 'asdasd', 'live_2', 0, 5, '1', '', NULL, '2025-05-14 10:23:29', '2025-05-14 10:24:43', NULL, 'all_pay', NULL, NULL),
(270, 'normal', 2, NULL, 'Vv', 'live_2', 0, 5, '1', '', NULL, '2025-05-14 14:59:20', '2025-05-14 15:00:43', NULL, 'all_pay', NULL, NULL),
(271, 'normal', 2, NULL, 'Hi', 'live_2', 0, 5, '1', '', NULL, '2025-05-14 15:12:09', '2025-05-14 15:13:23', NULL, 'all_pay', NULL, NULL),
(272, 'normal', 9, NULL, 'reed', 'live_9', 0, 5, '0', '', NULL, '2025-05-14 19:44:52', '2025-05-14 19:44:52', NULL, 'all_pay', NULL, NULL),
(273, 'normal', 2, NULL, 'grew', 'live_2', 0, 5, '1', '', NULL, '2025-05-14 20:16:18', '2025-05-14 20:18:24', NULL, 'all_pay', NULL, NULL),
(274, 'normal', 1, NULL, 'Hs', 'live_1', 0, 5, '0', '', NULL, '2025-05-14 20:31:22', '2025-05-14 20:48:20', NULL, 'all_pay', NULL, NULL),
(275, 'normal', 1, NULL, 'Hff', 'live_1', 0, 5, '0', '', NULL, '2025-05-14 20:52:58', '2025-05-14 20:54:51', NULL, 'all_pay', NULL, NULL),
(276, 'normal', 1, NULL, 'Arif', 'live_1', 0, 25, '0', '', NULL, '2025-05-14 22:51:21', '2025-05-14 22:52:03', NULL, 'all_pay', NULL, NULL),
(277, 'normal', 1, NULL, 'Hi', 'live_1', 0, 5, '1', '', NULL, '2025-05-15 01:58:43', '2025-05-15 02:22:06', NULL, 'all_pay', NULL, NULL),
(278, 'normal', 2, NULL, 'Hi', 'live_2', 0, 5, '1', '', NULL, '2025-05-15 10:15:16', '2025-05-15 10:46:17', NULL, 'all_pay', NULL, NULL),
(279, 'normal', 2, NULL, 'Hi', 'live_2', 0, 20, '1', '', NULL, '2025-05-15 10:55:49', '2025-05-15 11:04:46', NULL, 'all_pay', NULL, NULL),
(280, 'normal', 1, NULL, 'Hi', 'live_1', 0, 20, '1', '', NULL, '2025-05-15 11:25:15', '2025-05-15 11:26:38', NULL, 'all_pay', NULL, NULL),
(281, 'normal', 1, NULL, 'Hi', 'live_1', 0, 20, '1', '', NULL, '2025-05-15 12:15:02', '2025-05-15 12:19:35', NULL, 'all_pay', NULL, NULL),
(282, 'normal', 1, NULL, 'Hhh', 'live_1', 0, 20, '0', '', NULL, '2025-05-15 13:40:51', '2025-05-15 13:46:02', NULL, 'all_pay', NULL, NULL),
(283, 'normal', 1, NULL, 'Hu', 'live_1', 0, 20, '1', '', NULL, '2025-05-15 18:29:01', '2025-05-15 18:36:30', NULL, 'all_pay', NULL, NULL),
(284, 'normal', 1, NULL, 'Hjj', 'live_1', 0, 20, '1', '', NULL, '2025-05-15 18:36:57', '2025-05-15 18:42:51', NULL, 'all_pay', NULL, NULL),
(285, 'normal', 1, NULL, 'Hi', 'live_1', 0, 20, '1', '', NULL, '2025-05-15 21:03:30', '2025-05-15 21:10:41', NULL, 'all_pay', NULL, NULL),
(286, 'normal', 1, NULL, 'Hi', 'live_1', 0, 50, '0', '', NULL, '2025-05-15 21:17:40', '2025-05-15 21:21:07', NULL, 'all_pay', NULL, NULL),
(287, 'normal', 1, NULL, 'Totaltotal, Jamalpur', 'live_1', 0, 20, '0', '', NULL, '2025-05-15 23:20:44', '2025-05-15 23:24:45', NULL, 'all_pay', NULL, NULL),
(288, 'normal', 1, NULL, 'Tomaltola, jamalpur', 'live_1', 0, 20, '1', '', NULL, '2025-05-15 23:31:48', '2025-05-15 23:36:46', NULL, 'all_pay', NULL, NULL),
(289, 'normal', 1, NULL, 'Hi', 'live_1', 0, 20, '1', '', NULL, '2025-05-15 23:37:52', '2025-05-15 23:40:50', NULL, 'all_pay', NULL, NULL),
(290, 'normal', 1, NULL, 'Ggg', 'live_1', 0, 20, '0', '', NULL, '2025-05-16 00:57:58', '2025-05-16 01:20:52', NULL, 'all_pay', NULL, NULL),
(291, 'normal', 1, NULL, 'Asr', 'live_1', 0, 50, '0', '', NULL, '2025-05-16 01:29:12', '2025-05-16 01:29:20', NULL, 'all_pay', NULL, NULL),
(292, 'normal', 11, NULL, 'Affs', 'live_11', 0, 20, '0', '', NULL, '2025-05-16 01:39:48', '2025-05-16 01:40:08', NULL, 'all_pay', NULL, NULL),
(293, 'normal', 11, NULL, 'Fjh', 'live_11', 0, 20, '0', '', NULL, '2025-05-16 01:42:12', '2025-05-16 01:43:37', NULL, 'all_pay', NULL, NULL),
(294, 'normal', 1, NULL, 'Hi', 'live_1', 0, 50, '1', '', NULL, '2025-05-16 10:52:52', '2025-05-16 11:02:05', NULL, 'all_pay', NULL, NULL),
(295, 'normal', 1, NULL, 'Hhh', 'live_1', 0, 50, '1', '', NULL, '2025-05-16 11:02:32', '2025-05-16 11:42:23', NULL, 'all_pay', NULL, NULL),
(296, 'normal', 2, NULL, 'hi', 'live_2', 0, 50, '1', '', NULL, '2025-05-16 11:26:55', '2025-05-16 11:57:57', NULL, 'all_pay', NULL, NULL),
(297, 'normal', 2, NULL, 'hi', 'live_2', 0, 20, '1', '', NULL, '2025-05-16 11:58:17', '2025-05-16 12:04:42', NULL, 'all_pay', NULL, NULL),
(298, 'normal', 1, NULL, 'Hi', 'live_1', 0, 50, '1', '', NULL, '2025-05-16 13:27:13', '2025-05-16 13:46:42', NULL, 'all_pay', NULL, NULL),
(299, 'normal', 11, NULL, 'Argdvg', 'live_11', 0, 20, '0', '', NULL, '2025-05-16 13:38:03', '2025-05-16 13:59:21', NULL, 'all_pay', NULL, NULL),
(300, 'normal', 11, NULL, 'Hi', 'live_11', 0, 20, '0', '', NULL, '2025-05-16 13:59:58', '2025-05-16 14:10:33', NULL, 'all_pay', NULL, NULL),
(301, 'normal', 2, NULL, 'Hi', 'live_2', 0, 20, '0', '', NULL, '2025-05-16 16:08:46', '2025-05-16 16:09:49', NULL, 'all_pay', NULL, NULL),
(302, 'normal', 2, NULL, 'Hi', 'live_2', 0, 25, '1', '', NULL, '2025-05-16 17:51:39', '2025-05-16 17:54:56', NULL, 'all_pay', NULL, NULL),
(303, 'normal', 1, NULL, 'Hi', 'live_1', 0, 25, '0', '', NULL, '2025-05-16 18:05:44', '2025-05-16 18:08:42', NULL, 'all_pay', NULL, NULL),
(304, 'normal', 1, NULL, 'Said', 'live_1', 0, 20, '0', '', NULL, '2025-05-16 18:10:06', '2025-05-16 18:10:33', NULL, 'all_pay', NULL, NULL),
(305, 'normal', 2, NULL, 'Hi', 'live_2', 0, 20, '1', '', NULL, '2025-05-16 18:34:14', '2025-05-16 20:02:52', NULL, 'all_pay', NULL, NULL),
(306, 'normal', 1, NULL, 'hi', 'live_1', 0, 20, '1', '', NULL, '2025-05-16 20:00:27', '2025-05-16 20:07:21', NULL, 'all_pay', NULL, NULL),
(307, 'normal', 2, NULL, 'Hi', 'live_2', 0, 20, '1', '', NULL, '2025-05-16 21:03:33', '2025-05-16 22:38:13', NULL, 'all_pay', NULL, NULL),
(308, 'normal', 11, NULL, 'Sggsd', 'live_11', 0, 20, '0', '', NULL, '2025-05-16 21:03:55', '2025-05-16 21:04:38', NULL, 'all_pay', NULL, NULL),
(309, 'normal', 11, NULL, 'Basa', 'live_11', 0, 20, '0', '', NULL, '2025-05-16 21:18:37', '2025-05-16 21:44:27', NULL, 'all_pay', NULL, NULL),
(310, 'normal', 2, NULL, 'Hi', 'live_2', 0, 20, '0', '', NULL, '2025-05-16 22:38:31', '2025-05-16 22:41:32', NULL, 'all_pay', NULL, NULL),
(311, 'normal', 11, NULL, 'Ego', 'live_11', 0, 20, '1', '', NULL, '2025-05-16 23:11:01', '2025-05-16 23:42:01', NULL, 'all_pay', NULL, NULL),
(312, 'normal', 11, NULL, 'Thgd', 'live_11', 0, 20, '1', '', NULL, '2025-05-16 23:42:20', '2025-05-17 00:13:22', NULL, 'all_pay', NULL, NULL),
(313, 'normal', 11, NULL, 'Fdryt', 'live_11', 0, 20, '0', '', NULL, '2025-05-17 00:16:49', '2025-05-17 00:28:59', NULL, 'all_pay', NULL, NULL),
(314, 'normal', 11, NULL, 'Arif', 'live_11', 0, 20, '1', '', NULL, '2025-05-17 08:25:09', '2025-05-17 08:55:04', NULL, 'all_pay', NULL, NULL),
(315, 'normal', 11, NULL, 'Rhdd', 'live_11', 0, 20, '1', '', NULL, '2025-05-17 09:11:56', '2025-05-17 09:16:41', NULL, 'all_pay', NULL, NULL),
(316, 'normal', 2, NULL, 'Hi', 'live_2', 0, 20, '1', '', NULL, '2025-05-17 16:56:07', '2025-05-17 17:16:19', NULL, 'all_pay', NULL, NULL),
(317, 'normal', 11, NULL, 'Trfd', 'live_11', 0, 20, '1', '', NULL, '2025-05-17 17:10:18', '2025-05-17 17:41:19', NULL, 'all_pay', NULL, NULL),
(318, 'normal', 11, NULL, 'Rufd', 'live_11', 0, 20, '0', '', NULL, '2025-05-17 17:50:19', '2025-05-17 17:51:24', NULL, 'all_pay', NULL, NULL),
(319, 'normal', 11, NULL, 'Tdfhf', 'live_11', 0, 20, '1', '', NULL, '2025-05-17 19:00:58', '2025-05-17 19:31:17', NULL, 'all_pay', NULL, NULL),
(320, 'normal', 11, NULL, 'Tsghd', 'live_11', 0, 20, '1', '', NULL, '2025-05-17 21:33:37', '2025-05-17 22:04:39', NULL, 'all_pay', NULL, NULL),
(321, 'normal', 1, NULL, 'Hi', 'live_1', 0, 20, '1', '', NULL, '2025-05-18 00:31:11', '2025-05-18 00:34:04', NULL, 'all_pay', NULL, NULL),
(322, 'normal', 1, NULL, 'Hu', 'live_1', 0, 50, '0', '', NULL, '2025-05-18 00:35:26', '2025-05-18 00:38:42', NULL, 'all_pay', NULL, NULL),
(323, 'normal', 1, NULL, 'Hu', 'live_1', 0, 20, '0', '', NULL, '2025-05-18 01:59:10', '2025-05-18 02:21:05', NULL, 'all_pay', NULL, NULL),
(324, 'normal', 2, NULL, 'H', 'live_2', 0, 20, '1', '', NULL, '2025-05-18 10:47:46', '2025-05-18 10:49:33', NULL, 'all_pay', NULL, NULL),
(325, 'normal', 2, NULL, '20', 'live_2', 0, 20, '1', '', NULL, '2025-05-18 10:51:06', '2025-05-18 10:59:54', NULL, 'all_pay', NULL, NULL),
(326, 'normal', 11, NULL, 'Arif', 'live_11', 0, 20, '0', '', NULL, '2025-05-18 23:36:58', '2025-05-18 23:41:30', NULL, 'all_pay', NULL, NULL),
(327, 'normal', 11, NULL, '8td8tst8d9', 'live_11', 0, 20, '1', '', NULL, '2025-05-18 23:42:49', '2025-05-19 00:13:49', NULL, 'all_pay', NULL, NULL),
(328, 'normal', 2, NULL, 'Hi', 'live_2', 0, 20, '1', '', NULL, '2025-05-18 23:42:54', '2025-05-18 23:43:04', NULL, 'all_pay', NULL, NULL),
(329, 'normal', 2, NULL, 'yuui', 'live_2', 0, 20, '1', 'travel', NULL, '2025-05-19 17:25:14', '2025-05-19 17:25:26', NULL, 'all_pay', NULL, NULL),
(330, 'normal', 2, NULL, 'Hi', 'live_2', 0, 20, '1', 'bazar', NULL, '2025-05-19 17:26:33', '2025-05-19 17:29:45', NULL, 'all_pay', NULL, NULL),
(331, 'normal', 1, NULL, 'SB', 'live_1', 0, 20, '1', 'shop', NULL, '2025-05-19 17:30:34', '2025-05-19 17:33:14', NULL, 'all_pay', NULL, NULL),
(332, 'normal', 2, NULL, 'Hu', 'live_2', 0, 20, '0', 'bazar', NULL, '2025-05-19 17:48:58', '2025-05-19 17:51:33', NULL, 'all_pay', NULL, NULL),
(333, 'normal', 1, NULL, 'SB', 'live_1', 0, 20, '1', 'bazar', NULL, '2025-05-19 17:57:47', '2025-05-19 17:59:06', NULL, 'all_pay', NULL, NULL),
(334, 'normal', 11, NULL, 'Dudsd', 'live_11', 0, 20, '1', 'bazar', NULL, '2025-05-19 18:00:20', '2025-05-19 18:31:21', NULL, 'all_pay', NULL, NULL),
(335, 'normal', 11, NULL, 'Ydhfuf', 'live_11', 0, 20, '0', 'bazar', NULL, '2025-05-19 18:33:05', '2025-05-19 18:51:25', NULL, 'all_pay', NULL, NULL),
(336, 'normal', 2, NULL, 'Hi', 'live_2', 0, 50, '1', 'bazar', NULL, '2025-05-19 19:24:31', '2025-05-19 19:26:30', NULL, 'all_pay', NULL, NULL),
(337, 'normal', 2, NULL, 'Hi', 'live_2', 0, 20, '1', 'bazar', NULL, '2025-05-19 20:09:23', '2025-05-19 20:14:48', NULL, 'all_pay', NULL, NULL),
(338, 'normal', 2, NULL, 'jjjjs', 'live_2', 0, 20, '1', 'shop', NULL, '2025-05-19 21:07:07', '2025-05-19 21:17:59', NULL, 'all_pay', NULL, NULL),
(339, 'normal', 11, NULL, 'gjdhhf', 'live_11', 0, 20, '1', 'bazar', NULL, '2025-05-19 21:31:34', '2025-05-19 21:38:09', NULL, 'all_pay', NULL, NULL),
(340, 'normal', 11, NULL, 'Hhjdhr', 'live_11', 0, 20, '1', 'bazar', NULL, '2025-05-19 21:57:01', '2025-05-19 21:57:52', NULL, 'all_pay', NULL, NULL),
(341, 'normal', 11, NULL, 'Hhd', 'live_11', 0, 20, '0', 'bazar', NULL, '2025-05-19 21:58:00', '2025-05-19 22:23:54', NULL, 'all_pay', NULL, NULL),
(342, 'normal', 2, NULL, 'Bbndd', 'live_2', 0, 25, '1', 'bazar', NULL, '2025-05-19 23:26:58', '2025-05-19 23:32:22', NULL, 'all_pay', NULL, NULL),
(343, 'normal', 11, NULL, 'Sufd', 'live_11', 0, 20, '1', 'bazar', NULL, '2025-05-19 23:49:03', '2025-05-19 23:49:24', NULL, 'all_pay', NULL, NULL),
(344, 'normal', 2, NULL, 'Hi', 'live_2', 0, 25, '1', 'bazar', NULL, '2025-05-20 00:26:52', '2025-05-20 00:39:28', NULL, 'all_pay', NULL, NULL),
(345, 'normal', 2, NULL, 'Hhh', 'live_2', 0, 20, '0', 'shop', NULL, '2025-05-20 10:19:48', '2025-05-20 10:20:32', NULL, 'all_pay', NULL, NULL),
(346, 'normal', 2, NULL, 'Hi', 'live_2', 0, 20, '0', 'shop', NULL, '2025-05-20 10:33:25', '2025-05-20 10:36:44', NULL, 'all_pay', NULL, NULL),
(347, 'normal', 1, NULL, 'Hi', 'live_1', 0, 20, '0', 'bazar', NULL, '2025-05-20 17:32:25', '2025-05-20 17:46:58', NULL, 'all_pay', NULL, NULL),
(348, 'normal', 1, NULL, 'Fdjf', 'live_1', 0, 20, '0', 'bazar', NULL, '2025-05-20 17:59:44', '2025-05-20 18:13:35', NULL, 'all_pay', NULL, NULL),
(349, 'normal', 1, NULL, 'Hhu', 'live_1', 0, 20, '1', 'bazar', NULL, '2025-05-20 18:23:59', '2025-05-20 18:41:35', NULL, 'all_pay', NULL, NULL),
(350, 'normal', 11, NULL, 'Tghf', 'live_11', 0, 20, '1', 'bazar', NULL, '2025-05-20 19:28:32', '2025-05-20 19:31:40', NULL, 'all_pay', NULL, NULL),
(351, 'normal', 2, NULL, 'Nnns', 'live_2', 0, 20, '1', 'bazar', NULL, '2025-05-20 19:31:18', '2025-05-20 19:32:33', NULL, 'all_pay', NULL, NULL),
(352, 'normal', 2, NULL, 'Hu', 'live_2', 0, 20, '1', 'bazar', NULL, '2025-05-20 19:35:40', '2025-05-20 19:37:37', NULL, 'all_pay', NULL, NULL),
(353, 'normal', 2, NULL, 'kkoooko', 'live_2', 0, 20, '1', 'bazar', NULL, '2025-05-20 20:36:01', '2025-05-20 20:36:36', NULL, 'all_pay', NULL, NULL),
(354, 'normal', 2, NULL, 'ytre', 'live_2', 0, 20, '1', 'shop', NULL, '2025-05-20 21:57:22', '2025-05-20 21:57:49', NULL, 'all_pay', NULL, NULL);
INSERT INTO `live_streamings` (`id`, `type`, `user_id`, `buyer_id`, `name`, `channel`, `minutes`, `price`, `status`, `category`, `joined_at`, `created_at`, `updated_at`, `ends_at`, `availability`, `locations`, `token`) VALUES
(355, 'normal', 11, NULL, 'Tgfd', 'live_11', 0, 20, '0', 'bazar', NULL, '2025-05-20 22:02:43', '2025-05-20 22:03:41', NULL, 'all_pay', NULL, NULL),
(356, 'normal', 11, NULL, 'Gdfff', 'live_11', 0, 20, '1', 'bazar', NULL, '2025-05-20 22:14:52', '2025-05-20 22:31:16', NULL, 'all_pay', NULL, NULL),
(357, 'normal', 1, NULL, '30', 'live_1', 0, 20, '1', 'bazar', NULL, '2025-05-20 22:15:02', '2025-05-20 22:15:11', NULL, 'all_pay', NULL, NULL),
(358, 'normal', 11, NULL, 'Arif', 'live_11', 0, 20, '0', 'to-let', NULL, '2025-05-20 23:00:25', '2025-05-20 23:01:30', NULL, 'all_pay', NULL, NULL),
(359, 'normal', 11, NULL, 'Atjv', 'live_11', 0, 20, '0', 'help', NULL, '2025-05-20 23:03:15', '2025-05-20 23:21:35', NULL, 'all_pay', NULL, NULL),
(360, 'normal', 1, NULL, 'Hi', 'live_1', 0, 20, '1', 'bazar', NULL, '2025-05-20 23:21:44', '2025-05-20 23:22:49', NULL, 'all_pay', NULL, NULL),
(361, 'normal', 1, NULL, 'jii', 'live_1', 0, 20, '1', 'bazar', NULL, '2025-05-21 00:47:38', '2025-05-21 00:48:40', NULL, 'all_pay', NULL, NULL),
(362, 'normal', 1, NULL, 'Hg', 'live_1', 0, 20, '1', 'bazar', NULL, '2025-05-21 01:38:34', '2025-05-21 01:41:18', NULL, 'all_pay', NULL, NULL),
(363, 'normal', 11, NULL, 'Gghs', 'live_11', 0, 20, '1', 'shop', NULL, '2025-05-21 01:46:55', '2025-05-21 01:48:35', NULL, 'all_pay', NULL, NULL),
(364, 'normal', 11, NULL, 'Tadfs', 'live_11', 0, 20, '0', 'bazar', NULL, '2025-05-21 11:10:54', '2025-05-21 11:11:29', NULL, 'all_pay', NULL, NULL),
(365, 'normal', 11, NULL, 'Ruf', 'live_11', 0, 20, '1', 'bazar', NULL, '2025-05-21 11:38:58', '2025-05-21 12:10:02', NULL, 'all_pay', NULL, NULL),
(366, 'normal', 1, NULL, 'Hhhd', 'live_1', 0, 20, '0', 'travel', NULL, '2025-05-21 12:11:18', '2025-05-21 12:18:21', NULL, 'all_pay', NULL, NULL),
(367, 'normal', 1, NULL, 'Hhhs', 'live_1', 0, 20, '1', 'job', NULL, '2025-05-21 12:21:21', '2025-05-21 12:46:10', NULL, 'all_pay', NULL, NULL),
(368, 'normal', 1, NULL, 'Hhhd', 'live_1', 0, 20, '0', 'shop', NULL, '2025-05-21 14:33:43', '2025-05-21 14:34:52', NULL, 'all_pay', NULL, NULL),
(369, 'normal', 1, NULL, '20', 'live_1', 0, 20, '1', 'bazar', NULL, '2025-05-21 16:50:32', '2025-05-21 16:51:28', NULL, 'all_pay', NULL, NULL),
(370, 'normal', 2, NULL, 'Test 1', 'live_2', 0, 20, '1', 'help', NULL, '2025-05-21 17:56:52', '2025-05-21 17:57:46', NULL, 'all_pay', NULL, NULL),
(371, 'normal', 1, NULL, 'Hi', 'live_1', 0, 20, '1', 'help', NULL, '2025-05-21 18:22:39', '2025-05-21 18:24:25', NULL, 'all_pay', NULL, NULL),
(372, 'normal', 1, NULL, 'Hgf', 'live_1', 0, 20, '1', 'to-let', NULL, '2025-05-21 19:37:40', '2025-05-21 19:38:57', NULL, 'all_pay', NULL, NULL),
(373, 'normal', 11, NULL, 'Strs', 'live_11', 0, 20, '1', 'bazar', NULL, '2025-05-21 19:39:27', '2025-05-21 20:10:28', NULL, 'all_pay', NULL, NULL),
(374, 'normal', 2, NULL, 'Tuli', 'live_2', 0, 20, '0', 'shop', NULL, '2025-05-21 20:08:10', '2025-05-21 20:13:21', NULL, 'all_pay', NULL, NULL),
(375, 'normal', 11, NULL, 'Akhrgrh', 'live_11', 0, 20, '1', 'bazar', NULL, '2025-05-21 20:11:32', '2025-05-21 20:42:32', NULL, 'all_pay', NULL, NULL),
(376, 'normal', 11, NULL, 'Gjfjgkgj', 'live_11', 0, 20, '1', 'help', NULL, '2025-05-21 20:14:38', '2025-05-21 20:15:30', NULL, 'all_pay', NULL, NULL),
(377, 'normal', 1, NULL, 'Hi', 'live_1', 0, 20, '1', 'shop', NULL, '2025-05-21 22:54:27', '2025-05-21 22:55:41', NULL, 'all_pay', NULL, NULL),
(378, 'normal', 1, NULL, 'Hui', 'live_1', 0, 20, '1', 'shop', NULL, '2025-05-21 23:30:07', '2025-05-21 23:34:35', NULL, 'all_pay', NULL, NULL),
(379, 'normal', 1, NULL, 'Hhhhh', 'live_1', 0, 20, '1', 'bazar', NULL, '2025-05-21 23:55:38', '2025-05-22 00:00:49', NULL, 'all_pay', NULL, NULL),
(380, 'normal', 1, NULL, 'Cb c', 'live_1', 0, 20, '1', 'help', NULL, '2025-05-22 00:01:40', '2025-05-22 00:11:41', NULL, 'all_pay', NULL, NULL),
(381, 'normal', 11, NULL, 'Hu', 'live_11', 0, 20, '1', 'bazar', NULL, '2025-05-22 02:16:19', '2025-05-22 02:38:16', NULL, 'all_pay', NULL, NULL),
(382, 'normal', 11, NULL, 'Hu', 'live_11', 0, 20, '1', 'shop', NULL, '2025-05-22 02:38:40', '2025-05-22 03:01:03', NULL, 'all_pay', NULL, NULL),
(383, 'normal', 2, NULL, 'Hfxvb', 'live_2', 0, 20, '1', 'help', NULL, '2025-05-22 03:00:48', '2025-05-22 03:03:50', NULL, 'all_pay', NULL, NULL),
(384, 'normal', 11, NULL, 'Tomaltola, Jamalpur', 'live_11', 0, 30, '1', 'shop', NULL, '2025-05-22 03:11:03', '2025-05-22 03:26:44', NULL, 'all_pay', NULL, NULL),
(385, 'normal', 11, NULL, 'Hujh', 'live_11', 0, 20, '1', 'bazar', NULL, '2025-05-22 03:26:54', '2025-05-22 03:31:30', NULL, 'all_pay', NULL, NULL),
(386, 'normal', 2, NULL, 'Hhhs', 'live_2', 0, 80, '1', 'bazar', NULL, '2025-05-22 09:40:33', '2025-05-22 09:47:37', NULL, 'all_pay', NULL, NULL),
(387, 'normal', 2, NULL, 'Hi', 'live_2', 0, 20, '1', 'shop', NULL, '2025-05-22 09:55:48', '2025-05-22 09:57:59', NULL, 'all_pay', NULL, NULL),
(388, 'normal', 2, NULL, 'Hi', 'live_2', 0, 80, '1', 'bazar', NULL, '2025-05-22 11:13:46', '2025-05-22 11:37:48', NULL, 'all_pay', NULL, NULL),
(389, 'normal', 2, NULL, 'gazipur', 'live_2', 0, 50, '1', 'bazar', NULL, '2025-05-22 11:40:39', '2025-05-22 11:49:55', NULL, 'all_pay', NULL, NULL),
(390, 'normal', 11, NULL, 'Hhgf', 'live_11', 0, 20, '1', 'shop', NULL, '2025-05-22 11:50:24', '2025-05-22 11:55:55', NULL, 'all_pay', NULL, NULL),
(391, 'normal', 11, NULL, 'Gggfffgy', 'live_11', 0, 30, '1', 'bazar', NULL, '2025-05-22 12:14:29', '2025-05-22 12:45:31', NULL, 'all_pay', NULL, NULL),
(392, 'normal', 1, NULL, 'Hfddxfhyh gyhddd tudrthb', 'live_1', 0, 20, '1', 'shop', NULL, '2025-05-22 13:14:01', '2025-05-22 13:15:46', NULL, 'all_pay', NULL, NULL),
(393, 'normal', 1, NULL, 'Jjsjbddb', 'live_1', 0, 25, '1', 'bazar', NULL, '2025-05-22 13:37:49', '2025-05-22 13:43:06', NULL, 'all_pay', NULL, NULL),
(394, 'normal', 1, NULL, 'Hi', 'live_1', 0, 20, '1', 'bazar', NULL, '2025-05-22 13:46:09', '2025-05-22 13:48:37', NULL, 'all_pay', NULL, NULL),
(395, 'normal', 1, NULL, 'Hhhsd', 'live_1', 0, 20, '1', 'bazar', NULL, '2025-05-22 14:00:14', '2025-05-22 14:04:34', NULL, 'all_pay', NULL, NULL),
(396, 'normal', 2, NULL, '20', 'live_2', 0, 20, '0', 'bazar', NULL, '2025-05-22 14:03:59', '2025-05-22 14:06:29', NULL, 'all_pay', NULL, NULL),
(397, 'normal', 1, NULL, 'Hi', 'live_1', 0, 20, '1', 'bazar', NULL, '2025-05-22 14:10:25', '2025-05-22 14:10:59', NULL, 'all_pay', NULL, NULL),
(398, 'normal', 1, NULL, 'Hi', 'live_1', 0, 20, '0', 'bazar', NULL, '2025-05-22 14:11:17', '2025-05-22 14:16:22', NULL, 'all_pay', NULL, NULL),
(399, 'normal', 1, NULL, 'Nnsnsn', 'live_1', 0, 20, '1', 'bazar', NULL, '2025-05-22 14:25:54', '2025-05-22 14:26:17', NULL, 'all_pay', NULL, NULL),
(400, 'normal', 1, NULL, 'Bbbsbs', 'live_1', 0, 20, '0', 'shop', NULL, '2025-05-22 14:26:38', '2025-05-22 14:27:25', NULL, 'all_pay', NULL, NULL),
(401, 'normal', 2, NULL, 'Hgff', 'live_2', 0, 25, '1', 'job', NULL, '2025-05-22 16:45:27', '2025-05-22 16:48:53', NULL, 'all_pay', NULL, NULL),
(402, 'normal', 11, NULL, 'Haffsg', 'live_11', 0, 20, '0', 'bazar', NULL, '2025-05-22 16:52:12', '2025-05-22 17:02:18', NULL, 'all_pay', NULL, NULL),
(403, 'normal', 2, NULL, 'Test', 'live_2', 0, 20, '1', 'bazar', NULL, '2025-05-22 17:07:17', '2025-05-22 17:13:11', NULL, 'all_pay', NULL, NULL),
(404, 'normal', 2, NULL, 'Hi', 'live_2', 0, 25, '1', 'bazar', NULL, '2025-05-22 17:33:09', '2025-05-22 17:43:14', NULL, 'all_pay', NULL, NULL),
(405, 'normal', 1, NULL, 'reds', 'live_1', 0, 20, '1', 'shop', NULL, '2025-05-22 17:45:42', '2025-05-22 17:58:09', NULL, 'all_pay', NULL, NULL),
(406, 'normal', 1, NULL, 'Huuu', 'live_1', 0, 25, '1', 'bazar', NULL, '2025-05-22 18:46:20', '2025-05-22 18:53:58', NULL, 'all_pay', NULL, NULL),
(407, 'normal', 2, NULL, 'Hi', 'live_2', 0, 25, '1', 'help', NULL, '2025-05-22 19:51:46', '2025-05-22 19:59:55', NULL, 'all_pay', NULL, NULL),
(408, 'normal', 2, NULL, 'Hi', 'live_2', 0, 20, '0', 'bazar', NULL, '2025-05-22 20:00:33', '2025-05-22 20:05:45', NULL, 'all_pay', NULL, NULL),
(409, 'normal', 11, NULL, '41৭4৭17', 'live_11', 0, 20, '0', 'bazar', NULL, '2025-05-22 21:44:14', '2025-05-22 22:14:16', NULL, 'all_pay', NULL, NULL),
(410, 'normal', 11, NULL, 'Uxtix8t', 'live_11', 0, 20, '0', 'bazar', NULL, '2025-05-22 22:15:04', '2025-05-22 22:15:59', NULL, 'all_pay', NULL, NULL),
(411, 'normal', 11, NULL, 'Hdgh', 'live_11', 0, 20, '0', 'shop', NULL, '2025-05-22 22:32:34', '2025-05-22 22:42:36', NULL, 'all_pay', NULL, NULL),
(412, 'normal', 1, NULL, 'ewds', 'live_1', 0, 20, '1', 'travel', NULL, '2025-05-22 23:22:28', '2025-05-22 23:25:15', NULL, 'all_pay', NULL, NULL),
(413, 'normal', 1, NULL, 'fresdd', 'live_1', 0, 20, '1', 'travel', NULL, '2025-05-22 23:28:07', '2025-05-22 23:30:46', NULL, 'all_pay', NULL, NULL),
(414, 'normal', 2, NULL, 'Hubuhu', 'live_2', 0, 80, '1', 'bazar', NULL, '2025-05-22 23:43:23', '2025-05-22 23:44:13', NULL, 'all_pay', NULL, NULL),
(415, 'normal', 11, NULL, 'গডপগ', 'live_11', 0, 20, '0', 'bazar', NULL, '2025-05-23 00:22:39', '2025-05-23 00:24:16', NULL, 'all_pay', NULL, NULL),
(416, 'normal', 2, NULL, 'Jamalpur', 'live_2', 0, 20, '1', 'bazar', NULL, '2025-05-23 00:31:34', '2025-05-23 00:36:48', NULL, 'all_pay', NULL, NULL),
(417, 'normal', 2, NULL, 'This', 'live_2', 0, 25, '0', 'bazar', NULL, '2025-05-23 00:43:29', '2025-05-23 00:57:26', NULL, 'all_pay', NULL, NULL),
(418, 'normal', 1, NULL, 'Hhshs', 'live_1', 0, 20, '0', 'bazar', NULL, '2025-05-23 01:00:00', '2025-05-23 01:04:53', NULL, 'all_pay', NULL, NULL),
(419, 'normal', 1, NULL, 'High', 'live_1', 0, 80, '1', 'bazar', NULL, '2025-05-23 10:42:01', '2025-05-23 10:45:16', NULL, 'all_pay', NULL, NULL),
(420, 'normal', 1, NULL, 'Hhvv', 'live_1', 0, 20, '1', 'job', NULL, '2025-05-23 11:24:21', '2025-05-23 11:28:17', NULL, 'all_pay', NULL, NULL),
(421, 'normal', 11, NULL, ',arxff', 'live_11', 0, 20, '1', 'bazar', NULL, '2025-05-23 11:36:22', '2025-05-23 12:07:23', NULL, 'all_pay', NULL, NULL),
(422, 'normal', 11, NULL, 'Gshgs', 'live_11', 0, 20, '1', 'bazar', NULL, '2025-05-23 13:43:56', '2025-05-23 13:44:48', NULL, 'all_pay', NULL, NULL),
(423, 'normal', 1, NULL, 'Hhhsbs', 'live_1', 0, 20, '1', 'job', NULL, '2025-05-23 13:51:57', '2025-05-23 13:56:03', NULL, 'all_pay', NULL, NULL),
(424, 'normal', 11, NULL, 'Gdjd', 'live_11', 0, 20, '0', 'bazar', NULL, '2025-05-23 15:14:08', '2025-05-23 15:17:56', NULL, 'all_pay', NULL, NULL),
(425, 'normal', 11, NULL, 'Gdhf', 'live_11', 0, 20, '1', 'shop', NULL, '2025-05-23 16:45:53', '2025-05-23 16:50:10', NULL, 'all_pay', NULL, NULL),
(426, 'normal', 1, NULL, 'hk', 'live_1', 0, 20, '1', 'bazar', NULL, '2025-05-23 20:49:24', '2025-05-23 20:53:56', NULL, 'all_pay', NULL, NULL),
(427, 'normal', 1, NULL, 'Hhhs', 'live_1', 0, 20, '0', 'bazar', NULL, '2025-05-23 20:53:43', '2025-05-23 20:57:25', NULL, 'all_pay', NULL, NULL),
(428, 'normal', 1, NULL, 'fdff', 'live_1', 0, 20, '0', 'travel', NULL, '2025-05-23 21:05:59', '2025-05-23 21:12:00', NULL, 'all_pay', NULL, NULL),
(429, 'normal', 2, NULL, 'hi', 'live_2', 0, 20, '0', 'bazar', NULL, '2025-05-23 21:16:35', '2025-05-23 21:16:51', NULL, 'all_pay', NULL, NULL),
(430, 'normal', 1, NULL, 'dew', 'live_1', 0, 20, '1', 'help', NULL, '2025-05-23 21:31:58', '2025-05-23 21:42:44', NULL, 'all_pay', NULL, NULL),
(431, 'normal', 1, NULL, 'Hhhsh', 'live_1', 0, 50, '0', 'bazar', NULL, '2025-05-23 23:37:45', '2025-05-23 23:38:14', NULL, 'all_pay', NULL, NULL),
(432, 'normal', 1, NULL, 'Hhv', 'live_1', 0, 28, '1', 'travel', NULL, '2025-05-24 01:01:02', '2025-05-24 01:03:38', NULL, 'all_pay', NULL, NULL),
(433, 'normal', 11, NULL, 'Dffdd', 'live_11', 0, 20, '0', 'shop', NULL, '2025-05-24 01:04:08', '2025-05-24 01:09:58', NULL, 'all_pay', NULL, NULL),
(434, 'normal', 1, NULL, 'Hi', 'live_1', 0, 20, '1', 'bazar', NULL, '2025-05-24 01:27:25', '2025-05-24 02:04:53', NULL, 'all_pay', NULL, NULL),
(435, 'normal', 1, NULL, 'Hiid', 'live_1', 0, 50, '1', 'bazar', NULL, '2025-05-24 02:05:12', '2025-05-24 03:13:51', NULL, 'all_pay', NULL, NULL),
(436, 'normal', 11, NULL, 'Ufvjug', 'live_11', 0, 20, '1', 'bazar', NULL, '2025-05-24 02:33:54', '2025-05-24 02:34:26', NULL, 'all_pay', NULL, NULL),
(437, 'normal', 1, NULL, 'Hi', 'live_1', 0, 20, '1', 'bazar', NULL, '2025-05-24 03:14:05', '2025-05-24 03:14:33', NULL, 'all_pay', NULL, NULL),
(438, 'normal', 1, NULL, 'fds', 'live_1', 0, 20, '1', 'bazar', NULL, '2025-05-24 07:31:30', '2025-05-24 07:36:58', NULL, 'all_pay', NULL, NULL),
(439, 'normal', 1, NULL, 'Hi', 'live_1', 0, 20, '1', 'shop', NULL, '2025-05-24 10:36:54', '2025-05-24 10:41:25', NULL, 'all_pay', NULL, NULL),
(440, 'normal', 1, NULL, 'Hi', 'live_1', 0, 20, '1', 'bazar', NULL, '2025-05-24 13:11:32', '2025-05-24 13:22:58', NULL, 'all_pay', NULL, NULL),
(441, 'normal', 1, NULL, 'Hu', 'live_1', 0, 20, '1', 'bazar', NULL, '2025-05-24 13:33:43', '2025-05-24 13:37:31', NULL, 'all_pay', NULL, NULL),
(442, 'normal', 1, NULL, 'dssd', 'live_1', 0, 20, '1', 'shop', NULL, '2025-05-24 14:28:47', '2025-05-24 14:30:39', NULL, 'all_pay', NULL, NULL),
(443, 'normal', 1, NULL, 'hghbhj', 'live_1', 0, 20, '1', 'shop', NULL, '2025-05-24 14:31:26', '2025-05-24 14:43:36', NULL, 'all_pay', NULL, NULL),
(444, 'normal', 1, NULL, 'Hi', 'live_1', 0, 20, '1', 'bazar', NULL, '2025-05-24 14:33:30', '2025-05-24 14:36:30', NULL, 'all_pay', NULL, NULL),
(445, 'normal', 2, NULL, 'Hu', 'live_2', 0, 20, '1', 'help', NULL, '2025-05-24 14:44:46', '2025-05-24 14:45:48', NULL, 'all_pay', NULL, NULL),
(446, 'normal', 2, NULL, 'Hubuhu', 'live_2', 0, 20, '0', 'bazar', NULL, '2025-05-24 15:00:39', '2025-05-24 15:02:45', NULL, 'all_pay', NULL, NULL),
(447, 'normal', 2, NULL, 'Hi', 'live_2', 0, 80, '1', 'bazar', NULL, '2025-05-24 15:50:18', '2025-05-24 15:54:36', NULL, 'all_pay', NULL, NULL),
(448, 'normal', 2, NULL, 'Bbbhs', 'live_2', 0, 20, '1', 'job', NULL, '2025-05-24 15:56:32', '2025-05-24 16:00:40', NULL, 'all_pay', NULL, NULL),
(449, 'normal', 2, NULL, 'Gghh', 'live_2', 0, 20, '1', 'bazar', NULL, '2025-05-24 17:08:16', '2025-05-24 17:08:32', NULL, 'all_pay', NULL, NULL),
(450, 'normal', 1, NULL, 'fsd', 'live_1', 0, 20, '1', 'help', NULL, '2025-05-24 17:13:12', '2025-05-24 17:17:54', NULL, 'all_pay', NULL, NULL),
(451, 'normal', 11, NULL, 'Rufs', 'live_11', 0, 20, '0', 'bazar', NULL, '2025-05-24 20:21:45', '2025-05-24 20:22:18', NULL, 'all_pay', NULL, NULL),
(452, 'normal', 1, NULL, 'Hi', 'live_1', 0, 20, '0', 'bazar', NULL, '2025-05-24 21:17:35', '2025-05-24 21:21:21', NULL, 'all_pay', NULL, NULL),
(453, 'normal', 11, NULL, 'Dhxd', 'live_11', 0, 20, '0', 'shop', NULL, '2025-05-24 22:51:32', '2025-05-24 22:55:49', NULL, 'all_pay', NULL, NULL),
(454, 'normal', 11, NULL, 'Ucufug', 'live_11', 0, 20, '1', 'help', NULL, '2025-05-25 00:30:15', '2025-05-25 00:41:37', NULL, 'all_pay', NULL, NULL),
(455, 'normal', 11, NULL, 'Tgd', 'live_11', 0, 20, '1', 'job', NULL, '2025-05-25 00:44:58', '2025-05-25 00:46:10', NULL, 'all_pay', NULL, NULL),
(456, 'normal', 11, NULL, 'Ariful', 'live_11', 0, 20, '1', 'bazar', NULL, '2025-05-25 00:54:54', '2025-05-25 00:58:25', NULL, 'all_pay', NULL, NULL),
(457, 'normal', 2, NULL, 'Hi', 'live_2', 0, 20, '0', 'bazar', NULL, '2025-05-25 10:57:57', '2025-05-25 11:02:37', NULL, 'all_pay', NULL, NULL),
(458, 'normal', 11, NULL, 'Uffjf', 'live_11', 0, 20, '0', 'bazar', NULL, '2025-05-25 12:27:35', '2025-05-25 12:28:15', NULL, 'all_pay', NULL, NULL),
(459, 'normal', 11, NULL, 'Gdfh', 'live_11', 0, 20, '0', 'bazar', NULL, '2025-05-25 14:23:38', '2025-05-25 14:27:01', NULL, 'all_pay', NULL, NULL),
(460, 'normal', 11, NULL, 'Dhss', 'live_11', 0, 20, '0', 'bazar', NULL, '2025-05-25 14:51:37', '2025-05-25 14:53:00', NULL, 'all_pay', NULL, NULL),
(461, 'normal', 1, NULL, 'eef', 'live_1', 0, 20, '1', 'bazar', NULL, '2025-05-25 16:09:17', '2025-05-25 16:09:27', NULL, 'all_pay', NULL, NULL),
(462, 'normal', 11, NULL, 'Arif', 'live_11', 0, 20, '1', 'bazar', NULL, '2025-05-25 17:33:09', '2025-05-25 18:09:29', NULL, 'all_pay', NULL, NULL),
(463, 'normal', 2, NULL, 'Huhhs', 'live_2', 0, 20, '1', 'help', NULL, '2025-05-25 22:48:17', '2025-05-25 22:49:25', NULL, 'all_pay', NULL, NULL),
(464, 'normal', 2, NULL, 'Hi', 'live_2', 0, 25, '1', 'bazar', NULL, '2025-05-25 23:26:05', '2025-05-25 23:30:43', NULL, 'all_pay', NULL, NULL),
(465, 'normal', 2, NULL, 'Bbss', 'live_2', 0, 20, '0', 'job', NULL, '2025-05-26 02:23:02', '2025-05-26 02:25:36', NULL, 'all_pay', NULL, NULL),
(466, 'normal', 11, NULL, 'Txbgd', 'live_11', 0, 20, '1', 'bazar', NULL, '2025-05-26 02:23:02', '2025-05-26 02:29:16', NULL, 'all_pay', NULL, NULL),
(467, 'normal', 11, NULL, 'Sgsrx', 'live_11', 0, 20, '0', 'job', NULL, '2025-05-26 02:48:59', '2025-05-26 02:55:55', NULL, 'all_pay', NULL, NULL),
(468, 'normal', 2, NULL, 'Hhhh', 'live_2', 0, 20, '1', 'bazar', NULL, '2025-05-26 11:56:58', '2025-05-26 12:04:18', NULL, 'all_pay', NULL, NULL),
(469, 'normal', 2, NULL, 'Hihshd', 'live_2', 0, 25, '0', 'job', NULL, '2025-05-26 16:27:29', '2025-05-26 16:31:40', NULL, 'all_pay', NULL, NULL),
(470, 'normal', 2, NULL, 'Hu', 'live_2', 0, 60, '1', 'bazar', NULL, '2025-05-26 18:57:06', '2025-05-26 19:02:50', NULL, 'all_pay', NULL, NULL),
(471, 'normal', 2, NULL, 'Hui', 'live_2', 0, 25, '1', 'bazar', NULL, '2025-05-26 19:05:00', '2025-05-26 19:06:33', NULL, 'all_pay', NULL, NULL),
(472, 'normal', 2, NULL, '20', 'live_2', 0, 20, '1', 'bazar', NULL, '2025-05-26 19:08:37', '2025-05-26 19:14:15', NULL, 'all_pay', NULL, NULL),
(473, 'normal', 2, NULL, 'eda', 'live_2', 0, 20, '0', 'shop', NULL, '2025-05-26 19:17:55', '2025-05-26 19:41:46', NULL, 'all_pay', NULL, NULL),
(474, 'normal', 2, NULL, 'Hi', 'live_2', 0, 20, '1', 'bazar', NULL, '2025-05-26 19:19:09', '2025-05-26 19:21:58', NULL, 'all_pay', NULL, NULL),
(475, 'normal', 14, NULL, 'Asrf', 'live_14', 0, 20, '0', 'bazar', NULL, '2025-05-26 20:55:35', '2025-05-26 21:01:12', NULL, 'all_pay', NULL, NULL),
(476, 'normal', 14, NULL, 'Rfh', 'live_14', 0, 20, '0', 'bazar', NULL, '2025-05-26 21:05:24', '2025-05-26 21:05:32', NULL, 'all_pay', NULL, NULL),
(477, 'normal', 14, NULL, 'Djdj', 'live_14', 0, 20, '0', 'job', NULL, '2025-05-26 21:09:46', '2025-05-26 21:09:53', NULL, 'all_pay', NULL, NULL),
(478, 'normal', 14, NULL, 'kyd', 'live_14', 0, 20, '0', 'bazar', NULL, '2025-05-26 21:11:54', '2025-05-26 21:13:49', NULL, 'all_pay', NULL, NULL),
(479, 'normal', 14, NULL, 'Bgf', 'live_14', 0, 20, '0', 'bazar', NULL, '2025-05-26 21:19:29', '2025-05-26 21:19:50', NULL, 'all_pay', NULL, NULL),
(480, 'normal', 14, NULL, 'Ertwer', 'live_14', 0, 20, '1', 'bazar', NULL, '2025-05-26 21:21:35', '2025-05-26 21:25:55', NULL, 'all_pay', NULL, NULL),
(481, 'normal', 14, NULL, 'Ffgytr', 'live_14', 0, 20, '0', 'bazar', NULL, '2025-05-26 21:27:40', '2025-05-26 21:28:08', NULL, 'all_pay', NULL, NULL),
(482, 'normal', 14, NULL, 'Tuu', 'live_14', 0, 20, '0', 'bazar', NULL, '2025-05-26 21:31:11', '2025-05-26 21:32:02', NULL, 'all_pay', NULL, NULL),
(483, 'normal', 14, NULL, 'Maf', 'live_14', 0, 20, '0', 'bazar', NULL, '2025-05-26 22:43:40', '2025-05-26 22:46:45', NULL, 'all_pay', NULL, NULL),
(484, 'normal', 14, NULL, 'Tug', 'live_14', 0, 20, '1', 'bazar', NULL, '2025-05-26 22:57:33', '2025-05-26 22:58:17', NULL, 'all_pay', NULL, NULL),
(485, 'normal', 2, NULL, 'Hu', 'live_2', 0, 66, '1', 'bazar', NULL, '2025-05-26 23:02:34', '2025-05-26 23:04:39', NULL, 'all_pay', NULL, NULL),
(486, 'normal', 11, NULL, 'hddh', 'live_11', 0, 20, '1', 'to-let', NULL, '2025-05-26 23:59:58', '2025-05-27 00:07:47', NULL, 'all_pay', NULL, NULL),
(487, 'normal', 11, NULL, 'yf6f', 'live_11', 0, 20, '1', 'bazar', NULL, '2025-05-27 00:15:03', '2025-05-27 00:44:25', NULL, 'all_pay', NULL, NULL),
(488, 'normal', 11, NULL, 'Gddfg', 'live_11', 0, 20, '1', 'bazar', NULL, '2025-05-27 00:56:35', '2025-05-27 01:24:07', NULL, 'all_pay', NULL, NULL),
(489, 'normal', 11, NULL, 'Dtgsd', 'live_11', 0, 20, '1', 'travel', NULL, '2025-05-27 01:25:33', '2025-05-27 01:34:01', NULL, 'all_pay', NULL, NULL),
(490, 'normal', 2, NULL, 'dds', 'live_2', 0, 20, '1', 'travel', NULL, '2025-05-27 01:50:21', '2025-05-27 01:56:12', NULL, 'all_pay', NULL, NULL),
(491, 'normal', 11, NULL, 'skydo', 'live_11', 0, 20, '1', 'help', NULL, '2025-05-27 02:29:03', '2025-05-27 02:48:52', NULL, 'all_pay', NULL, NULL),
(492, 'normal', 2, NULL, 'Bbbsd', 'live_2', 0, 20, '1', 'help', NULL, '2025-05-27 02:33:12', '2025-05-27 02:36:16', NULL, 'all_pay', NULL, NULL),
(493, 'normal', 11, NULL, 'Gghh', 'live_11', 0, 25, '1', 'bazar', NULL, '2025-05-27 02:50:26', '2025-05-27 03:08:10', NULL, 'all_pay', NULL, NULL),
(494, 'normal', 11, NULL, 'Dfds', 'live_11', 0, 20, '1', 'bazar', NULL, '2025-05-27 03:08:23', '2025-05-27 03:10:35', NULL, 'all_pay', NULL, NULL),
(495, 'normal', 2, NULL, 'Hu', 'live_2', 0, 20, '1', 'help', NULL, '2025-05-27 03:08:34', '2025-05-27 03:14:22', NULL, 'all_pay', NULL, NULL),
(496, 'normal', 11, NULL, 'Cyufufu', 'live_11', 0, 20, '1', 'bazar', NULL, '2025-05-27 03:25:05', '2025-05-27 03:27:00', NULL, 'all_pay', NULL, NULL),
(497, 'normal', 2, NULL, 'Hu', 'live_2', 0, 55, '0', 'bazar', NULL, '2025-05-27 10:30:43', '2025-05-27 10:45:18', NULL, 'all_pay', NULL, NULL),
(498, 'normal', 11, NULL, 'Hi', 'live_11', 0, 52, '1', 'bazar', NULL, '2025-05-27 10:51:35', '2025-05-27 10:54:50', NULL, 'all_pay', NULL, NULL),
(499, 'normal', 11, NULL, 'Dhdd', 'live_11', 0, 20, '1', 'bazar', NULL, '2025-05-27 11:19:11', '2025-05-27 11:25:12', NULL, 'all_pay', NULL, NULL),
(500, 'normal', 2, NULL, 'Hu', 'live_2', 0, 25, '1', 'to-let', NULL, '2025-05-27 11:21:31', '2025-05-27 11:22:49', NULL, 'all_pay', NULL, NULL),
(501, 'normal', 2, NULL, 'Hhvv', 'live_2', 0, 20, '1', 'shop', NULL, '2025-05-27 13:06:59', '2025-05-27 13:07:28', NULL, 'all_pay', NULL, NULL),
(502, 'normal', 2, NULL, 'dsax', 'live_2', 0, 20, '1', 'shop', NULL, '2025-05-27 13:21:20', '2025-05-27 13:27:49', NULL, 'all_pay', NULL, NULL),
(503, 'normal', 2, NULL, 'Bbshs', 'live_2', 0, 20, '1', 'bazar', NULL, '2025-05-27 15:58:21', '2025-05-27 16:01:55', NULL, 'all_pay', NULL, NULL),
(504, 'normal', 11, NULL, 'yfyfyfu', 'live_11', 0, 20, '1', 'bazar', NULL, '2025-05-27 16:01:21', '2025-05-27 16:05:24', NULL, 'all_pay', NULL, NULL),
(505, 'normal', 11, NULL, 'hu', 'live_11', 0, 20, '1', 'bazar', NULL, '2025-05-27 16:59:54', '2025-05-27 17:05:26', NULL, 'all_pay', NULL, NULL),
(506, 'normal', 2, NULL, '50', 'live_2', 0, 50, '0', 'bazar', NULL, '2025-05-27 17:06:23', '2025-05-27 17:09:30', NULL, 'all_pay', NULL, NULL),
(507, 'normal', 2, NULL, 'Hu', 'live_2', 0, 23, '0', 'bazar', NULL, '2025-05-27 18:23:03', '2025-05-27 18:26:22', NULL, 'all_pay', NULL, NULL),
(508, 'normal', 2, NULL, 'Gyuir', 'live_2', 0, 20, '1', 'bazar', NULL, '2025-05-27 18:42:53', '2025-05-27 18:43:48', NULL, 'all_pay', NULL, NULL),
(509, 'normal', 1, NULL, 'dcds', 'live_1', 0, 20, '1', 'bazar', NULL, '2025-05-27 18:48:19', '2025-05-27 18:50:23', NULL, 'all_pay', NULL, NULL),
(510, 'normal', 1, NULL, 'rewds', 'live_1', 0, 20, '1', 'travel', NULL, '2025-05-27 18:50:50', '2025-05-27 18:54:25', NULL, 'all_pay', NULL, NULL),
(511, 'private', 1, 2, 'Live Private', 'live_private_wTXpu_1', 10, 0, '1', '', '2025-05-27 18:57:15', '2025-05-27 18:55:26', '2025-05-27 18:57:51', NULL, 'private', NULL, 'Xk4qQzXgyY8SoD1ivsosHoBhqQ7uhkPsCsD35NiO'),
(512, 'normal', 2, NULL, 'Bj', 'live_2', 0, 20, '0', 'bazar', NULL, '2025-05-27 18:58:20', '2025-05-27 18:59:12', NULL, 'all_pay', NULL, NULL),
(513, 'normal', 2, NULL, 'Hi', 'live_2', 0, 20, '1', 'help', NULL, '2025-05-27 19:00:27', '2025-05-27 19:07:36', NULL, 'all_pay', NULL, NULL),
(514, 'normal', 2, NULL, 'Hhhd', 'live_2', 0, 55, '0', 'help', NULL, '2025-05-27 19:55:28', '2025-05-27 19:56:41', NULL, 'all_pay', NULL, NULL),
(515, 'normal', 2, NULL, 'Hi', 'live_2', 0, 20, '0', 'bazar', NULL, '2025-05-27 19:57:27', '2025-05-27 19:57:46', NULL, 'all_pay', NULL, NULL),
(516, 'normal', 1, NULL, 'Hhhd', 'live_1', 0, 20, '1', 'bazar', NULL, '2025-05-27 19:59:26', '2025-05-27 19:59:46', NULL, 'all_pay', NULL, NULL),
(517, 'normal', 1, NULL, 'Hhhhs', 'live_1', 0, 20, '1', 'bazar', NULL, '2025-05-27 20:00:14', '2025-05-27 20:00:24', NULL, 'all_pay', NULL, NULL),
(518, 'normal', 1, NULL, 'Bk', 'live_1', 0, 20, '1', 'bazar', NULL, '2025-05-27 20:11:12', '2025-05-27 20:13:22', NULL, 'all_pay', NULL, NULL),
(519, 'normal', 1, NULL, 'Hu', 'live_1', 0, 25, '1', 'bazar', NULL, '2025-05-27 21:11:08', '2025-05-27 21:14:45', NULL, 'all_pay', NULL, NULL),
(520, 'normal', 1, NULL, 'Hhh', 'live_1', 0, 20, '1', 'bazar', NULL, '2025-05-27 21:48:13', '2025-05-27 21:52:58', NULL, 'all_pay', NULL, NULL),
(521, 'normal', 2, NULL, 'Hu', 'live_2', 0, 20, '0', 'help', NULL, '2025-05-27 22:48:50', '2025-05-27 23:03:50', NULL, 'all_pay', NULL, NULL),
(522, 'normal', 2, NULL, 'Uuffgg', 'live_2', 0, 20, '1', 'bazar', NULL, '2025-05-27 23:04:43', '2025-05-27 23:12:39', NULL, 'all_pay', NULL, NULL),
(523, 'normal', 1, NULL, 'Uiyg', 'live_1', 0, 20, '1', 'bazar', NULL, '2025-05-27 23:56:21', '2025-05-27 23:57:46', NULL, 'all_pay', NULL, NULL),
(524, 'normal', 2, NULL, 'Ghjw', 'live_2', 0, 20, '1', 'help', NULL, '2025-05-27 23:57:33', '2025-05-28 00:00:36', NULL, 'all_pay', NULL, NULL),
(525, 'normal', 1, NULL, 'Hhss', 'live_1', 0, 25, '1', 'bazar', NULL, '2025-05-28 00:28:29', '2025-05-28 00:33:46', NULL, 'all_pay', NULL, NULL),
(526, 'normal', 2, NULL, 'Fhfdd', 'live_2', 0, 20, '1', 'job', NULL, '2025-05-28 00:51:27', '2025-05-28 01:13:38', NULL, 'all_pay', NULL, NULL),
(527, 'normal', 1, NULL, 'Huhhd', 'live_1', 0, 28, '1', 'bazar', NULL, '2025-05-28 00:53:08', '2025-05-28 01:02:46', NULL, 'all_pay', NULL, NULL),
(528, 'normal', 1, NULL, 'Hhshdh', 'live_1', 0, 55, '1', 'bazar', NULL, '2025-05-28 01:04:18', '2025-05-28 01:12:03', NULL, 'all_pay', NULL, NULL),
(529, 'normal', 2, NULL, 'Ygdd', 'live_2', 0, 20, '0', 'bazar', NULL, '2025-05-28 02:20:50', '2025-05-28 02:27:51', NULL, 'all_pay', NULL, NULL),
(530, 'normal', 2, NULL, 'Hfuf', 'live_2', 0, 20, '0', 'bazar', NULL, '2025-05-28 10:23:12', '2025-05-28 10:25:10', NULL, 'all_pay', NULL, NULL),
(531, 'normal', 2, NULL, 'Hhh', 'live_2', 0, 20, '1', 'help', NULL, '2025-05-28 11:07:23', '2025-05-28 11:12:53', NULL, 'all_pay', NULL, NULL),
(532, 'normal', 2, NULL, 'Shfs', 'live_2', 0, 20, '0', 'bazar', NULL, '2025-05-28 11:20:55', '2025-05-28 11:21:12', NULL, 'all_pay', NULL, NULL),
(533, 'normal', 2, NULL, 'Tomaltola', 'live_2', 0, 20, '1', 'bazar', NULL, '2025-05-28 12:05:15', '2025-05-28 12:15:51', NULL, 'all_pay', NULL, NULL),
(534, 'normal', 2, NULL, 'Tgsd', 'live_2', 0, 20, '0', 'bazar', NULL, '2025-05-28 15:15:54', '2025-05-28 15:16:19', NULL, 'all_pay', NULL, NULL),
(535, 'normal', 2, NULL, 'Tgdh', 'live_2', 0, 20, '1', 'bazar', NULL, '2025-05-28 15:37:19', '2025-05-28 16:08:21', NULL, 'all_pay', NULL, NULL),
(536, 'normal', 2, NULL, 'Hi hello', 'live_2', 0, 20, '1', 'bazar', NULL, '2025-05-28 18:45:34', '2025-05-28 18:47:45', NULL, 'all_pay', NULL, NULL),
(537, 'normal', 2, NULL, 'Hu', 'live_2', 0, 80, '1', 'bazar', NULL, '2025-05-28 18:48:13', '2025-05-28 18:50:11', NULL, 'all_pay', NULL, NULL),
(538, 'normal', 2, NULL, 'Hu', 'live_2', 0, 20, '1', 'bazar', NULL, '2025-05-28 18:50:39', '2025-05-28 18:59:06', NULL, 'all_pay', NULL, NULL),
(539, 'normal', 2, NULL, 'Hhhhd', 'live_2', 0, 50, '1', 'help', NULL, '2025-05-28 19:59:14', '2025-05-28 21:16:56', NULL, 'all_pay', NULL, NULL),
(540, 'normal', 14, NULL, 'jdvrbtht', 'live_14', 0, 20, '0', 'help', NULL, '2025-05-28 20:05:51', '2025-05-28 20:07:52', NULL, 'all_pay', NULL, NULL),
(541, 'normal', 2, NULL, 'Bbbs', 'live_2', 0, 20, '1', 'bazar', NULL, '2025-05-28 23:14:28', '2025-05-28 23:39:48', NULL, 'all_pay', NULL, NULL),
(542, 'normal', 2, NULL, 'Bb', 'live_2', 0, 56, '1', 'shop', NULL, '2025-05-29 00:16:26', '2025-05-29 00:30:45', NULL, 'all_pay', NULL, NULL),
(543, 'normal', 2, NULL, 'Ffdgh', 'live_2', 0, 20, '1', 'bazar', NULL, '2025-05-29 02:34:48', '2025-05-29 02:42:38', NULL, 'all_pay', NULL, NULL),
(544, 'normal', 2, NULL, 'Huggs', 'live_2', 0, 20, '1', 'shop', NULL, '2025-05-29 12:04:23', '2025-05-29 12:12:01', NULL, 'all_pay', NULL, NULL),
(545, 'normal', 2, NULL, 'Hi', 'live_2', 0, 20, '1', 'shop', NULL, '2025-05-29 12:17:16', '2025-05-29 12:18:48', NULL, 'all_pay', NULL, NULL),
(546, 'normal', 2, NULL, 'Hfhg', 'live_2', 0, 20, '0', 'bazar', NULL, '2025-05-29 18:41:55', '2025-05-29 18:43:10', NULL, 'all_pay', NULL, NULL),
(547, 'normal', 2, NULL, 'Hffvv', 'live_2', 0, 20, '0', 'bazar', NULL, '2025-05-29 20:04:13', '2025-05-29 20:05:05', NULL, 'all_pay', NULL, NULL),
(548, 'normal', 2, NULL, 'Fsfgw', 'live_2', 0, 20, '0', 'bazar', NULL, '2025-05-29 21:56:46', '2025-05-29 22:00:14', NULL, 'all_pay', NULL, NULL),
(549, 'normal', 1, NULL, 'Hu', 'live_1', 0, 23, '1', 'bazar', NULL, '2025-05-31 03:56:41', '2025-05-31 03:57:52', NULL, 'all_pay', NULL, NULL),
(550, 'normal', 1, NULL, 'Hi', 'live_1', 0, 25, '0', 'bazar', NULL, '2025-05-31 04:07:41', '2025-05-31 04:08:02', NULL, 'all_pay', NULL, NULL),
(551, 'normal', 1, NULL, 'Jamalpur', 'live_1', 0, 20, '0', 'buysell', NULL, '2025-06-01 04:56:50', '2025-06-01 05:00:36', NULL, 'all_pay', NULL, NULL),
(552, 'normal', 1, NULL, 'Jamalpur', 'live_1', 0, 20, '1', 'service', NULL, '2025-06-01 10:31:00', '2025-06-01 10:31:34', NULL, 'all_pay', NULL, NULL),
(553, 'normal', 1, NULL, 'Jamalpur', 'live_1', 0, 20, '1', 'service', NULL, '2025-06-01 14:42:55', '2025-06-01 14:51:57', NULL, 'all_pay', NULL, NULL),
(554, 'normal', 1, NULL, 'Foodzone Jamalpur', 'live_1', 0, 20, '1', 'buysell', NULL, '2025-06-01 15:12:57', '2025-06-01 15:19:02', NULL, 'all_pay', NULL, NULL),
(555, 'normal', 18, NULL, 'Hi', 'live_18', 0, 20, '1', 'service', NULL, '2025-06-01 15:25:33', '2025-06-01 15:27:16', NULL, 'all_pay', NULL, NULL),
(556, 'normal', 18, NULL, 'Hu', 'live_18', 0, 20, '1', 'service', NULL, '2025-06-01 15:34:04', '2025-06-01 15:36:22', NULL, 'all_pay', NULL, NULL),
(557, 'normal', 18, NULL, 'Hi', 'live_18', 0, 20, '0', 'service', NULL, '2025-06-01 22:03:54', '2025-06-01 22:05:57', NULL, 'all_pay', NULL, NULL),
(558, 'normal', 1, NULL, 'Hi', 'live_1', 0, 50, '1', 'service', NULL, '2025-06-02 01:52:38', '2025-06-02 01:57:20', NULL, 'all_pay', NULL, NULL),
(559, 'normal', 1, NULL, 'Hi', 'live_1', 0, 20, '1', 'service', NULL, '2025-06-02 02:04:05', '2025-06-02 02:12:08', NULL, 'all_pay', NULL, NULL),
(560, 'normal', 1, NULL, 'lkkj', 'live_1', 0, 49, '0', 'service', NULL, '2025-06-02 13:37:54', '2025-06-02 13:38:06', NULL, 'all_pay', NULL, NULL),
(561, 'normal', 1, NULL, '522', 'live_1', 0, 25, '1', 'service', NULL, '2025-06-02 16:06:57', '2025-06-02 16:09:27', NULL, 'all_pay', NULL, NULL),
(562, 'normal', 18, NULL, 'Hi', 'live_18', 0, 25, '1', 'service', NULL, '2025-06-02 16:09:53', '2025-06-02 16:18:21', NULL, 'all_pay', NULL, NULL),
(563, 'normal', 18, NULL, 'Hu', 'live_18', 0, 20, '1', 'service', NULL, '2025-06-02 17:25:54', '2025-06-02 17:27:22', NULL, 'all_pay', NULL, NULL),
(564, 'normal', 18, NULL, 'Ggg', 'live_18', 0, 20, '1', 'service', NULL, '2025-06-02 17:27:38', '2025-06-02 17:46:33', NULL, 'all_pay', NULL, NULL),
(565, 'normal', 18, NULL, 'New Live', 'live_18', 0, 20, '1', 'service', NULL, '2025-06-02 17:48:13', '2025-06-02 17:51:38', NULL, 'all_pay', NULL, NULL),
(566, 'normal', 19, NULL, 'Tueel', 'live_19', 0, 80, '1', 'buysell', NULL, '2025-06-02 17:59:42', '2025-06-02 18:05:54', NULL, 'all_pay', NULL, NULL),
(567, 'normal', 18, NULL, 'Ggh', 'live_18', 0, 20, '1', 'service', NULL, '2025-06-02 18:08:14', '2025-06-02 18:14:21', NULL, 'all_pay', NULL, NULL),
(568, 'normal', 18, NULL, 'Hhjjj', 'live_18', 0, 20, '1', 'service', NULL, '2025-06-02 18:21:47', '2025-06-02 18:28:53', NULL, 'all_pay', NULL, NULL),
(569, 'normal', 18, NULL, 'V', 'live_18', 0, 40, '1', 'service', NULL, '2025-06-02 19:49:10', '2025-06-02 19:51:31', NULL, 'all_pay', NULL, NULL),
(570, 'normal', 18, NULL, 'The', 'live_18', 0, 30, '1', 'service', NULL, '2025-06-02 20:34:17', '2025-06-02 20:45:55', NULL, 'all_pay', NULL, NULL),
(571, 'private', 1, 18, 'Live Private', 'live_private_d8CVH_1', 10, 0, '1', '', '2025-06-02 21:25:24', '2025-06-02 21:23:57', '2025-06-02 21:36:25', NULL, 'private', NULL, 'fjHRodSUfLcdCIaNIOGuUiSZG14PeJQkWVnDBU1p'),
(572, 'normal', 18, NULL, 'Hu', 'live_18', 0, 20, '1', 'service', NULL, '2025-06-03 19:27:29', '2025-06-03 19:33:26', NULL, 'all_pay', NULL, NULL),
(573, 'normal', 1, NULL, 'Hubuhu', 'live_1', 0, 20, '1', 'service', NULL, '2025-06-03 21:57:35', '2025-06-03 21:58:22', NULL, 'all_pay', NULL, NULL),
(574, 'normal', 25, NULL, 'Arif', 'live_25', 0, 20, '1', 'service', NULL, '2025-06-04 01:47:12', '2025-06-04 01:49:57', NULL, 'all_pay', NULL, NULL),
(575, 'normal', 1, NULL, 'Hi', 'live_1', 0, 20, '1', 'service', NULL, '2025-06-04 01:50:02', '2025-06-04 01:51:31', NULL, 'all_pay', NULL, NULL),
(576, 'normal', 25, NULL, 'Arif', 'live_25', 0, 20, '0', 'service', NULL, '2025-06-04 10:53:24', '2025-06-04 10:54:09', NULL, 'all_pay', NULL, NULL),
(577, 'normal', 28, NULL, 'Thdah', 'live_28', 0, 20, '1', 'service', NULL, '2025-06-04 11:25:59', '2025-06-04 11:38:01', NULL, 'all_pay', NULL, NULL),
(578, 'normal', 28, NULL, 'Dhku', 'live_28', 0, 20, '1', 'buysell', NULL, '2025-06-04 11:46:37', '2025-06-04 11:47:07', NULL, 'all_pay', NULL, NULL),
(579, 'normal', 30, NULL, 'ড্রাইভিং অনুভূতি', 'live_30', 0, 20, '1', 'service', NULL, '2025-06-04 11:49:24', '2025-06-04 11:51:12', NULL, 'all_pay', NULL, NULL),
(580, 'normal', 25, NULL, 'Arif', 'live_25', 0, 20, '0', 'service', NULL, '2025-06-04 12:46:19', '2025-06-04 12:46:55', NULL, 'all_pay', NULL, NULL),
(581, 'normal', 28, NULL, 'Gghhjjx', 'live_28', 0, 20, '1', 'service', NULL, '2025-06-04 18:35:51', '2025-06-04 18:36:20', NULL, 'all_pay', NULL, NULL),
(582, 'normal', 28, NULL, 'Fghk', 'live_28', 0, 20, '1', 'service', NULL, '2025-06-04 18:38:28', '2025-06-04 18:39:12', NULL, 'all_pay', NULL, NULL),
(583, 'normal', 28, NULL, 'Ghjk', 'live_28', 0, 20, '1', 'service', NULL, '2025-06-04 18:40:23', '2025-06-04 18:44:35', NULL, 'all_pay', NULL, NULL),
(584, 'normal', 28, NULL, 'Dfhh', 'live_28', 0, 20, '1', 'service', NULL, '2025-06-04 22:24:25', '2025-06-04 22:48:38', NULL, 'all_pay', NULL, NULL),
(585, 'normal', 25, NULL, 'hfds', 'live_25', 0, 20, '1', 'buysell', NULL, '2025-06-05 12:32:45', '2025-06-05 12:33:48', NULL, 'all_pay', NULL, NULL),
(586, 'normal', 25, NULL, 'Arif', 'live_25', 0, 20, '0', 'shop', NULL, '2025-06-05 14:25:28', '2025-06-05 14:26:05', NULL, 'all_pay', NULL, NULL),
(587, 'normal', 1, NULL, 'ooo', 'live_1', 0, 20, '1', 'shop', NULL, '2025-06-05 14:39:54', '2025-06-05 14:40:03', NULL, 'all_pay', NULL, NULL),
(588, 'normal', 27, NULL, 'jjjj', 'live_27', 0, 23, '1', 'shop', NULL, '2025-06-05 14:44:03', '2025-06-05 14:44:57', NULL, 'all_pay', NULL, NULL),
(589, 'normal', 27, NULL, 'Hi', 'live_27', 0, 20, '1', 'shop', NULL, '2025-06-05 14:44:20', '2025-06-05 14:45:14', NULL, 'all_pay', NULL, NULL),
(590, 'normal', 27, NULL, 'oo', 'live_27', 0, 20, '1', 'shop', NULL, '2025-06-05 14:45:43', '2025-06-05 14:46:58', NULL, 'all_pay', NULL, NULL),
(591, 'normal', 1, NULL, 'ew', 'live_1', 0, 23, '1', 'shop', NULL, '2025-06-05 17:08:40', '2025-06-05 17:09:05', NULL, 'all_pay', '[\"Jamalpur\"]', NULL),
(592, 'normal', 1, NULL, 'Hi', 'live_1', 0, 20, '1', 'shop', NULL, '2025-06-05 17:09:26', '2025-06-05 17:12:43', NULL, 'all_pay', '[\"Jamalpur\"]', NULL),
(593, 'normal', 1, NULL, 'Hi', 'live_1', 0, 20, '1', 'shop', NULL, '2025-06-05 17:17:31', '2025-06-05 17:22:36', NULL, 'all_pay', '[\"Jamalpur\"]', NULL),
(594, 'normal', 1, NULL, 'Hhshs', 'live_1', 0, 20, '1', 'shop', NULL, '2025-06-05 17:28:02', '2025-06-05 17:44:06', NULL, 'all_pay', '[\"Melandah\"]', NULL),
(595, 'normal', 1, NULL, 'Lobo', 'live_1', 0, 20, '0', 'shop', NULL, '2025-06-05 17:28:10', '2025-06-05 17:36:51', NULL, 'all_pay', '[\"Jamalpur\"]', NULL),
(596, 'normal', 27, NULL, 'Hi', 'live_27', 0, 20, '1', 'shop', NULL, '2025-06-05 19:12:58', '2025-06-05 19:18:58', NULL, 'all_pay', '[\"Melandah\"]', NULL),
(597, 'normal', 28, NULL, 'Ghjk', 'live_28', 0, 20, '1', 'buysell', NULL, '2025-06-05 20:10:52', '2025-06-05 20:17:01', NULL, 'all_pay', '[]', NULL),
(598, 'normal', 1, NULL, 'Remove', 'live_1', 0, 20, '1', 'shop', NULL, '2025-06-05 22:33:32', '2025-06-05 22:41:01', NULL, 'all_pay', '[\"Jamalpur\"]', NULL),
(599, 'normal', 1, NULL, 'Hu', 'live_1', 0, 20, '1', 'shop', NULL, '2025-06-05 23:41:18', '2025-06-05 23:43:45', NULL, 'all_pay', '[\"Jamalpur\"]', NULL),
(600, 'normal', 1, NULL, '454', 'live_1', 0, 22, '1', 'buysell', NULL, '2025-06-06 01:55:16', '2025-06-06 01:55:21', NULL, 'all_pay', '[\"Jamalpur\"]', NULL),
(601, 'normal', 1, NULL, 'Hi', 'live_1', 0, 20, '1', 'job', NULL, '2025-06-06 11:08:24', '2025-06-06 11:13:20', NULL, 'all_pay', '[\"Jamalpur\"]', NULL),
(602, 'normal', 1, NULL, 'Hi', 'live_1', 0, 20, '1', 'job', NULL, '2025-06-06 12:21:37', '2025-06-06 12:25:39', NULL, 'all_pay', '[\"Jamalpur\"]', NULL),
(603, 'normal', 1, NULL, '20', 'live_1', 0, 20, '1', 'buysell', NULL, '2025-06-07 19:30:48', '2025-06-07 19:31:00', NULL, 'all_pay', '[\"Jamalpur\"]', NULL),
(604, 'normal', 1, NULL, 'fgf', 'live_1', 0, 20, '1', 'buysell', NULL, '2025-06-07 19:55:09', '2025-06-07 19:55:14', NULL, 'all_pay', '[]', NULL),
(605, 'normal', 1, NULL, 'r', 'live_1', 0, 20, '1', 'job', NULL, '2025-06-07 20:26:09', '2025-06-07 20:26:46', NULL, 'all_pay', '[]', NULL),
(606, 'normal', 1, NULL, 'This is test', 'live_1', 0, 20, '1', 'buysell', NULL, '2025-06-07 21:59:22', '2025-06-07 22:02:39', NULL, 'all_pay', '[\"Jamalpur\"]', NULL),
(607, 'normal', 25, NULL, 'Arif', 'live_25', 0, 20, '0', 'job', NULL, '2025-06-07 22:29:32', '2025-06-07 22:32:24', NULL, 'all_pay', '[\"Melandah\"]', NULL),
(608, 'normal', 1, NULL, 'Hi', 'live_1', 0, 20, '1', 'job', NULL, '2025-06-08 01:18:08', '2025-06-08 01:27:53', NULL, 'all_pay', '[\"Jamalpur\"]', NULL),
(609, 'normal', 25, NULL, 'Arif', 'live_25', 0, 20, '0', 'job', NULL, '2025-06-08 17:43:27', '2025-06-08 17:44:05', NULL, 'all_pay', '[\"Jamalpur\"]', NULL),
(610, 'normal', 25, NULL, 'আমহচড', 'live_25', 0, 20, '0', 'job', NULL, '2025-06-09 01:26:42', '2025-06-09 01:27:08', NULL, 'all_pay', '[\"Melandah\"]', NULL),
(611, 'normal', 25, NULL, 'Arif', 'live_25', 0, 20, '0', 'job', NULL, '2025-06-09 16:43:26', '2025-06-09 16:47:56', NULL, 'all_pay', '[\"Bakshiganj\"]', NULL),
(612, 'normal', 25, NULL, 'Arif', 'live_25', 0, 20, '1', 'buysell', NULL, '2025-06-09 22:28:18', '2025-06-09 22:28:46', NULL, 'all_pay', '[\"Jamalpur\"]', NULL),
(613, 'normal', 1, NULL, 'Yyyy', 'live_1', 0, 20, '1', 'buysell', NULL, '2025-06-09 22:29:23', '2025-06-09 22:29:43', NULL, 'all_pay', '[\"Jamalpur\"]', NULL),
(614, 'normal', 1, NULL, '123', 'live_1', 0, 20, '1', 'buysell', NULL, '2025-06-10 00:12:07', '2025-06-10 00:12:15', NULL, 'all_pay', '[\"Jamalpur\"]', NULL),
(615, 'normal', 1, NULL, 'sdfsdf', 'live_1', 0, 20, '1', 'job', NULL, '2025-06-10 21:14:41', '2025-06-10 21:22:39', NULL, 'all_pay', '[\"Jamalpur\"]', NULL),
(616, 'normal', 25, NULL, 'Arif', 'live_25', 0, 20, '1', 'job', NULL, '2025-06-11 01:26:47', '2025-06-11 01:27:42', NULL, 'all_pay', '[\"Melandah\"]', NULL),
(617, 'normal', 28, NULL, 'dghjk', 'live_28', 0, 20, '1', 'buysell', NULL, '2025-06-12 11:08:11', '2025-06-12 11:10:43', NULL, 'all_pay', '[]', NULL),
(618, 'normal', 28, NULL, 'ghki', 'live_28', 0, 20, '1', 'buysell', NULL, '2025-06-12 11:12:03', '2025-06-12 11:13:30', NULL, 'all_pay', '[]', NULL),
(619, 'normal', 25, NULL, 'Adgsa', 'live_25', 0, 20, '1', 'buysell', NULL, '2025-06-12 14:49:30', '2025-06-12 14:49:53', NULL, 'all_pay', '[\"Jamalpur, Jamalpur Sadar, Bangladesh\"]', NULL),
(620, 'normal', 25, NULL, 'Hddsu', 'live_25', 0, 20, '0', 'buysell', NULL, '2025-06-12 15:02:27', '2025-06-12 15:02:54', NULL, 'all_pay', '[\"Jamalpur, Jamalpur Sadar, Bangladesh\"]', NULL),
(621, 'normal', 1, NULL, 'Bbd', 'live_1', 0, 20, '1', 'job', NULL, '2025-06-12 15:56:22', '2025-06-12 16:00:57', NULL, 'all_pay', '[\"Jamalpur, Jamalpur Sadar, Bangladesh\"]', NULL),
(622, 'normal', 1, NULL, 'Bbbsd', 'live_1', 0, 20, '1', 'buysell', NULL, '2025-06-12 16:00:12', '2025-06-12 16:00:51', NULL, 'all_pay', '[\"Jamalpur, Jamalpur Sadar, Bangladesh\"]', NULL),
(623, 'normal', 25, NULL, 'Arif', 'live_25', 0, 20, '0', 'buysell', NULL, '2025-06-12 16:05:46', '2025-06-12 16:29:34', NULL, 'all_pay', '[\"Jamalpur, Jamalpur Sadar, Bangladesh\"]', NULL),
(624, 'normal', 25, NULL, 'Fhzzy', 'live_25', 0, 20, '1', 'buysell', NULL, '2025-06-12 16:29:22', '2025-06-12 16:29:32', NULL, 'all_pay', '[\"Jamalpur, Jamalpur Sadar, Bangladesh\"]', NULL),
(625, 'normal', 25, NULL, 'Afcz', 'live_25', 0, 20, '0', 'job', NULL, '2025-06-12 18:37:43', '2025-06-12 18:37:56', NULL, 'all_pay', '[\"Jamalpur, Jamalpur Sadar, Bangladesh\"]', NULL),
(626, 'normal', 28, NULL, 'Dfgh', 'live_28', 0, 20, '1', 'buysell', NULL, '2025-06-12 20:43:57', '2025-06-12 20:44:59', NULL, 'all_pay', '[]', NULL),
(627, 'normal', 1, NULL, 'hhh', 'live_1', 0, 20, '1', 'buysell', NULL, '2025-06-12 21:51:39', '2025-06-12 21:52:53', NULL, 'all_pay', '[\"Jamalpur, Jamalpur Sadar, Bangladesh\"]', NULL),
(628, 'normal', 25, NULL, 'Arif', 'live_25', 0, 20, '0', 'job', NULL, '2025-06-12 21:53:08', '2025-06-12 21:53:31', NULL, 'all_pay', '[\"Jamalpur, Jamalpur Sadar, Bangladesh\"]', NULL),
(629, 'normal', 25, NULL, 'Arif', 'live_25', 0, 20, '0', 'to-let', NULL, '2025-06-12 21:54:32', '2025-06-12 21:56:50', NULL, 'all_pay', '[\"Melandah, Jamalpur, Bangladesh\"]', NULL),
(630, 'normal', 25, NULL, 'Udufug', 'live_25', 0, 20, '0', 'job', NULL, '2025-06-12 22:46:57', '2025-06-12 22:47:04', NULL, 'all_pay', '[\"Jamalpur, Jamalpur Sadar, Bangladesh\"]', NULL),
(631, 'normal', 1, NULL, 'testing', 'live_1', 0, 20, '1', 'job', NULL, '2025-06-12 23:23:31', '2025-06-12 23:23:47', NULL, 'all_pay', '[\"Melandah, Jamalpur, Bangladesh\"]', NULL),
(632, 'normal', 1, NULL, 'Bbbs', 'live_1', 0, 20, '1', 'buysell', NULL, '2025-06-13 00:49:48', '2025-06-13 00:50:09', NULL, 'all_pay', '[\"Jamalpur, Jamalpur Sadar, Bangladesh\"]', NULL),
(633, 'normal', 28, NULL, 'Ddfgh', 'live_28', 0, 20, '1', 'buysell', NULL, '2025-06-13 10:08:36', '2025-06-13 10:15:04', NULL, 'all_pay', '[]', NULL),
(634, 'normal', 1, NULL, 'Hhhh', 'live_1', 0, 20, '1', 'job', NULL, '2025-06-13 13:09:34', '2025-06-13 13:09:57', NULL, 'all_pay', '[\"Jamalpur, Jamalpur Sadar, Bangladesh\"]', NULL),
(635, 'normal', 28, NULL, 'Fghjc', 'live_28', 0, 20, '1', 'buysell', NULL, '2025-06-13 18:12:41', '2025-06-13 18:13:10', NULL, 'all_pay', '[]', NULL),
(636, 'normal', 1, NULL, 'lfdj', 'live_1', 0, 20, '1', 'buysell', NULL, '2025-06-13 22:14:48', '2025-06-13 22:15:30', NULL, 'all_pay', '[\"Melandah, Jamalpur, Bangladesh\"]', NULL),
(637, 'normal', 25, NULL, 'Afsdg', 'live_25', 0, 20, '0', 'job', NULL, '2025-06-14 01:12:25', '2025-06-14 01:12:49', NULL, 'all_pay', '[\"Jamalpur, Jamalpur Sadar, Bangladesh\"]', NULL),
(638, 'normal', 28, NULL, 'ghjk', 'live_28', 0, 20, '1', 'buysell', NULL, '2025-06-14 15:08:29', '2025-06-14 15:15:04', NULL, 'all_pay', '[]', NULL),
(639, 'normal', 28, NULL, 'Cghk', 'live_28', 0, 20, '1', 'buysell', NULL, '2025-06-14 15:13:39', '2025-06-14 15:13:56', NULL, 'all_pay', '[]', NULL),
(640, 'normal', 1, NULL, 'Sabbir', 'live_1', 0, 45, '1', 'job', NULL, '2025-06-14 15:27:25', '2025-06-14 17:10:01', NULL, 'all_pay', '[\"Jamalpur, Jamalpur Sadar, Bangladesh\"]', NULL),
(641, 'normal', 1, NULL, 'hi', 'live_1', 0, 20, '1', 'buysell', NULL, '2025-06-14 20:50:37', '2025-06-14 20:50:44', NULL, 'all_pay', '[\"Jamalpur, Jamalpur Sadar, Bangladesh\"]', NULL),
(642, 'normal', 1, NULL, 'Hh', 'live_1', 0, 20, '1', 'buysell', NULL, '2025-06-14 20:52:14', '2025-06-14 20:52:54', NULL, 'all_pay', '[\"Jamalpur, Jamalpur Sadar, Bangladesh\"]', NULL),
(643, 'normal', 1, NULL, 'khgdjsah', 'live_1', 0, 20, '1', 'buysell', NULL, '2025-06-14 20:56:03', '2025-06-14 20:56:29', NULL, 'all_pay', '[\"Jamalpur, Jamalpur Sadar, Bangladesh\"]', NULL),
(644, 'normal', 1, NULL, 'Hhhs', 'live_1', 0, 20, '1', 'buysell', NULL, '2025-06-14 20:56:59', '2025-06-14 20:57:09', NULL, 'all_pay', '[\"Jamalpur, Jamalpur Sadar, Bangladesh\"]', NULL),
(645, 'normal', 1, NULL, 'Test', 'live_1', 0, 20, '1', 'buysell', NULL, '2025-06-14 21:30:09', '2025-06-14 21:32:49', NULL, 'all_pay', '[\"Melandah, Jamalpur, Bangladesh\"]', NULL),
(646, 'normal', 1, NULL, 'Hu', 'live_1', 0, 20, '1', 'job', NULL, '2025-06-14 21:42:02', '2025-06-14 21:42:19', NULL, 'all_pay', '[\"Jamalpur, Jamalpur Sadar, Bangladesh\"]', NULL),
(647, 'normal', 1, NULL, 'f', 'live_1', 0, 20, '1', 'job', NULL, '2025-06-15 01:50:37', '2025-06-15 01:50:42', NULL, 'all_pay', '[]', NULL),
(648, 'normal', 25, NULL, 'Afdaf', 'live_25', 0, 20, '1', 'job', NULL, '2025-06-15 13:04:03', '2025-06-15 13:04:26', NULL, 'all_pay', '[\"Jamalpur, Jamalpur Sadar, Bangladesh\"]', NULL),
(649, 'normal', 1, NULL, 'Test', 'live_1', 0, 20, '1', 'buysell', NULL, '2025-06-15 21:43:33', '2025-06-15 21:43:54', NULL, 'all_pay', '[\"Bakshiganj, Jamalpur, Bangladesh\"]', NULL),
(650, 'normal', 28, NULL, 'Xfgh', 'live_28', 0, 20, '0', 'buysell', NULL, '2025-06-16 16:50:12', '2025-06-16 16:52:28', NULL, 'all_pay', '[]', NULL),
(651, 'normal', 28, NULL, 'Vghk', 'live_28', 0, 20, '0', 'buysell', NULL, '2025-06-16 16:53:15', '2025-06-16 16:54:38', NULL, 'all_pay', '[]', NULL),
(652, 'normal', 28, NULL, 'Dfghh', 'live_28', 0, 20, '1', 'to-let', NULL, '2025-06-16 16:54:17', '2025-06-16 16:54:29', NULL, 'all_pay', '[]', NULL),
(653, 'normal', 28, NULL, 'Cfty', 'live_28', 0, 20, '1', 'buysell', NULL, '2025-06-16 17:10:04', '2025-06-16 17:13:01', NULL, 'all_pay', '[]', NULL),
(654, 'normal', 1, NULL, 'Hui', 'live_1', 0, 20, '1', 'to-let', NULL, '2025-06-17 11:16:45', '2025-06-17 11:17:21', NULL, 'all_pay', '[\"Melandah, Jamalpur, Bangladesh\"]', NULL),
(655, 'normal', 25, NULL, 'QsF', 'live_25', 0, 20, '1', 'job', NULL, '2025-06-18 01:37:19', '2025-06-18 01:38:05', NULL, 'all_pay', '[\"Jamalpur, Jamalpur Sadar, Bangladesh\"]', NULL),
(656, 'normal', 1, NULL, 'test', 'live_1', 0, 20, '1', 'buysell', NULL, '2025-06-20 06:25:43', '2025-06-20 06:26:10', NULL, 'all_pay', '[\"Jamalpur, Jamalpur Sadar, Bangladesh\",\"Islampur, Jamalpur, Bangladesh\"]', NULL),
(657, 'normal', 1, NULL, 'test', 'live_1', 0, 23, '1', 'job', NULL, '2025-06-20 06:27:03', '2025-06-20 06:27:18', NULL, 'all_pay', '[\"Islampur, Jamalpur, Bangladesh\"]', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `live_streaming_private_requests`
--

CREATE TABLE `live_streaming_private_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `minutes` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `live_streaming_private_requests`
--

INSERT INTO `live_streaming_private_requests` (`id`, `transaction_id`, `user_id`, `creator_id`, `minutes`, `status`, `created_at`, `updated_at`) VALUES
(1, 37, 2, 1, 10, 1, '2025-05-27 15:59:14', '2025-05-27 18:55:26'),
(2, 40, 18, 1, 10, 2, '2025-06-02 12:51:49', '2025-06-02 14:50:50'),
(3, 41, 18, 1, 15, 2, '2025-06-02 15:07:09', '2025-06-02 15:16:00'),
(4, 42, 18, 1, 20, 2, '2025-06-02 15:08:12', '2025-06-02 15:15:56'),
(5, 47, 18, 1, 10, 1, '2025-06-02 21:21:37', '2025-06-02 21:23:57'),
(6, 48, 18, 1, 10, 2, '2025-06-02 21:41:38', '2025-06-03 03:02:54');

-- --------------------------------------------------------

--
-- Table structure for table `login_sessions`
--

CREATE TABLE `login_sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(100) NOT NULL,
  `device` varchar(100) DEFAULT NULL,
  `device_type` varchar(100) DEFAULT NULL,
  `browser` varchar(100) DEFAULT NULL,
  `platform` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login_sessions`
--

INSERT INTO `login_sessions` (`id`, `user_id`, `ip`, `device`, `device_type`, `browser`, `platform`, `country`, `created_at`, `updated_at`) VALUES
(1, 1, '127.0.0.1', 'WebKit', 'desktop', 'Chrome 125.0.0.0', 'Windows 10.0', NULL, '2024-06-18 05:44:19', '2024-06-18 11:54:14'),
(2, 1, '103.198.133.35', 'WebKit', 'desktop', 'Chrome 135.0.0.0', 'Windows 10.0', NULL, '2025-04-08 09:05:45', '2025-04-28 21:00:37'),
(3, 1, '102.89.84.156', 'WebKit', 'desktop', 'Chrome 131.0.0.0', 'Linux ', NULL, '2025-04-08 11:04:57', '2025-04-08 11:04:57'),
(4, 1, '37.111.221.151', 'WebKit', 'phone', 'Chrome 135.0.0.0', 'AndroidOS 10', NULL, '2025-04-08 12:56:37', '2025-05-08 13:43:37'),
(5, 2, '37.111.212.230', 'WebKit', 'phone', 'Chrome 135.0.0.0', 'AndroidOS 10', 'Bangladesh', '2025-04-08 13:13:28', '2025-05-03 00:07:23'),
(6, 1, '103.161.106.47', 'WebKit', 'phone', 'Chrome 134.0.6998.135', 'AndroidOS 11', NULL, '2025-04-08 15:10:57', '2025-04-08 23:50:22'),
(7, 1, '138.199.30.208', 'WebKit', 'phone', 'Chrome 134.0.0.0', 'AndroidOS 10', NULL, '2025-04-08 18:32:25', '2025-05-27 23:55:55'),
(8, 2, '72.255.7.26', 'WebKit', 'desktop', 'Chrome 135.0.0.0', 'Windows 10.0', 'Pakistan', '2025-04-08 21:35:59', '2025-04-14 22:27:23'),
(9, 1, '112.134.157.242', 'Macintosh', 'desktop', 'Chrome 134.0.0.0', 'OS X 10_15_7', NULL, '2025-04-09 09:39:59', '2025-04-09 20:29:56'),
(10, 1, '103.251.245.225', 'WebKit', 'desktop', 'Chrome 134.0.0.0', 'Windows 10.0', NULL, '2025-04-09 21:05:14', '2025-04-09 21:05:14'),
(11, 2, '117.102.49.4', 'WebKit', 'phone', 'Chrome 135.0.7049.38', 'AndroidOS 9', 'Pakistan', '2025-04-10 07:57:55', '2025-04-13 09:21:52'),
(12, 2, '58.145.187.130', '0', 'desktop', 'Firefox 137.0', 'Windows 10.0', 'Bangladesh', '2025-04-10 09:31:41', '2025-04-10 09:31:41'),
(13, 2, '182.183.38.74', 'iPhone', 'phone', 'Safari 18.1', 'iOS 18_1', 'Pakistan', '2025-04-10 10:05:26', '2025-04-10 10:05:26'),
(14, 2, '119.155.176.123', 'WebKit', 'desktop', 'Chrome 134.0.0.0', 'Windows 10.0', 'Pakistan', '2025-04-10 14:34:46', '2025-04-10 14:34:46'),
(15, 2, '124.29.254.63', 'OnePlus', 'phone', 'Chrome 135.0.7049.39', 'AndroidOS 9', 'Pakistan', '2025-04-11 10:28:59', '2025-04-11 10:28:59'),
(16, 3, '111.88.47.186', 'WebKit', 'phone', 'Chrome 135.0.0.0', 'AndroidOS 10', 'Pakistan', '2025-04-11 19:42:28', '2025-04-11 19:42:28'),
(17, 4, '119.160.56.71', 'WebKit', 'phone', 'Chrome 131.0.0.0', 'AndroidOS 10', 'Pakistan', '2025-04-11 19:51:35', '2025-04-11 19:51:35'),
(18, 2, '138.199.30.208', 'WebKit', 'phone', 'Chrome 134.0.0.0', 'AndroidOS 10', 'United Kingdom', '2025-04-11 19:53:53', '2025-05-27 18:47:01'),
(19, 5, '101.50.70.248', 'WebKit', 'desktop', 'Chrome 135.0.0.0', 'Windows 10.0', 'Pakistan', '2025-04-11 19:57:18', '2025-04-11 19:57:18'),
(20, 2, '103.240.161.167', 'iPhone', 'phone', 'Safari 18.4', 'iOS 18_4', 'India', '2025-04-12 15:54:24', '2025-04-12 15:54:24'),
(21, 2, '72.255.7.26', 'WebKit', 'phone', 'Chrome 134.0.6998.135', 'AndroidOS 15', 'Pakistan', '2025-04-13 09:45:33', '2025-04-13 09:45:33'),
(23, 1, '72.255.7.26', 'WebKit', 'desktop', 'Chrome 115.0.0.0', 'Windows 10.0', NULL, '2025-04-14 11:15:58', '2025-04-14 18:09:19'),
(24, 1, '37.111.221.137', 'WebKit', 'desktop', 'Chrome 136.0.0.0', 'Linux ', NULL, '2025-04-30 15:51:18', '2025-06-17 00:18:30'),
(26, 2, '37.111.218.135', 'WebKit', 'phone', 'Chrome 136.0.0.0', 'AndroidOS 10', 'Bangladesh', '2025-05-07 23:52:35', '2025-05-30 11:05:42'),
(27, 1, '37.111.212.85', 'WebKit', 'phone', 'Chrome 136.0.0.0', 'AndroidOS 10', NULL, '2025-05-08 23:52:33', '2025-06-18 01:33:45'),
(28, 2, '37.111.211.194', 'WebKit', 'desktop', 'Chrome 136.0.0.0', 'Windows 10.0', 'Bangladesh', '2025-05-11 22:33:43', '2025-05-29 01:31:24'),
(29, 2, '37.111.214.87', '0', 'desktop', 'Firefox 138.0', 'Windows 10.0', 'Bangladesh', '2025-05-12 17:49:18', '2025-05-13 01:43:23'),
(30, 8, '37.111.214.100', 'WebKit', 'phone', 'Chrome 136.0.0.0', 'AndroidOS 10', 'Bangladesh', '2025-05-12 18:00:48', '2025-05-12 22:23:57'),
(31, 2, '154.198.90.254', 'iPhone', 'phone', 'Mozilla ', 'iOS 18_1_1', 'Pakistan', '2025-05-12 20:38:43', '2025-05-12 20:38:43'),
(32, 2, '103.255.67.6', 'WebKit', 'phone', 'Chrome 136.0.7103.60', 'AndroidOS 15', 'Pakistan', '2025-05-12 21:50:39', '2025-05-12 21:50:39'),
(33, 2, '182.183.3.211', '0', 'desktop', 'Firefox 139.0', 'Windows 10.0', 'Pakistan', '2025-05-12 22:08:53', '2025-05-12 22:08:53'),
(34, 8, '37.111.214.88', '0', 'desktop', 'Firefox 138.0', 'Windows 10.0', 'Bangladesh', '2025-05-12 23:56:07', '2025-05-13 12:00:40'),
(35, 1, '37.111.214.87', '0', 'desktop', 'Firefox 139.0', 'Windows 10.0', NULL, '2025-05-13 01:52:26', '2025-05-13 01:52:26'),
(36, 2, '175.107.208.171', 'Macintosh', 'desktop', 'Firefox 138.0', 'OS X 10.15', 'Pakistan', '2025-05-14 00:12:48', '2025-05-14 10:17:28'),
(37, 2, '102.89.75.248', 'WebKit', 'phone', 'Chrome 133.0.0.0', 'AndroidOS 10', 'Nigeria', '2025-05-14 00:58:37', '2025-05-24 21:27:30'),
(38, 2, '102.89.85.60', 'Nexus', 'phone', 'Chrome 136.0.0.0', 'AndroidOS 6.0', 'Nigeria', '2025-05-14 19:38:58', '2025-05-22 17:51:06'),
(39, 9, '102.89.75.36', 'Nexus', 'phone', 'Chrome 136.0.0.0', 'AndroidOS 6.0', 'Nigeria', '2025-05-14 19:42:26', '2025-05-14 19:42:26'),
(40, 10, '102.89.75.36', 'Nexus', 'phone', 'Chrome 136.0.0.0', 'AndroidOS 6.0', 'Nigeria', '2025-05-14 19:55:37', '2025-05-14 19:59:47'),
(41, 10, '102.89.75.36', 'WebKit', 'desktop', 'Chrome 136.0.0.0', 'Linux ', 'Nigeria', '2025-05-14 20:09:58', '2025-05-14 20:09:58'),
(43, 11, '37.111.212.249', 'WebKit', 'phone', 'Chrome 136.0.0.0', 'AndroidOS 10', 'Bangladesh', '2025-05-16 01:20:36', '2025-05-27 16:59:23'),
(45, 13, '103.167.17.227', 'WebKit', 'phone', 'Chrome 136.0.0.0', 'AndroidOS 10', 'Bangladesh', '2025-05-17 01:29:54', '2025-05-17 01:29:54'),
(46, 1, '103.244.173.40', 'WebKit', 'desktop', 'Edge 136.0.0.0', 'Windows 10.0', NULL, '2025-05-17 17:06:04', '2025-06-05 11:26:52'),
(47, 14, '37.111.207.214', 'WebKit', 'phone', 'Chrome 136.0.0.0', 'AndroidOS 10', 'Bangladesh', '2025-05-21 19:58:49', '2025-05-28 20:04:38'),
(48, 1, '119.30.41.176', 'WebKit', 'phone', 'Chrome 136.0.7103.60', 'AndroidOS 15', NULL, '2025-05-22 12:07:45', '2025-05-22 12:07:45'),
(49, 15, '103.167.17.227', 'WebKit', 'phone', 'Chrome 136.0.0.0', 'AndroidOS 10', 'Bangladesh', '2025-05-22 15:15:03', '2025-05-22 15:18:43'),
(51, 1, '102.89.75.248', 'WebKit', 'phone', 'Chrome 133.0.0.0', 'AndroidOS 10', NULL, '2025-05-24 14:03:11', '2025-05-24 14:03:11'),
(52, 2, '103.229.82.14', 'WebKit', 'desktop', 'Edge 136.0.0.0', 'Windows 10.0', 'Bangladesh', '2025-05-27 21:47:07', '2025-05-29 21:55:51'),
(55, 1, '37.111.207.147', 'WebKit', 'phone', 'Chrome 131.0.0.0', 'AndroidOS 10', NULL, '2025-05-31 05:39:55', '2025-05-31 05:39:55'),
(58, 1, '95.146.195.249', 'WebKit', 'phone', 'Chrome 136.0.7103.125', 'AndroidOS 15', NULL, '2025-06-01 20:36:27', '2025-06-01 20:36:27'),
(60, 1, '112.134.152.159', 'Macintosh', 'desktop', 'Chrome 136.0.0.0', 'OS X 10_15_7', NULL, '2025-06-02 13:11:25', '2025-06-07 19:22:46'),
(69, 1, '2409:40d1:a:81f8:31e7:df11:177e:4aec', 'WebKit', 'desktop', 'Chrome 137.0.0.0', 'Windows 10.0', NULL, '2025-06-03 14:15:15', '2025-06-27 08:42:36'),
(72, 25, '37.111.206.168', 'WebKit', 'phone', 'Chrome 136.0.0.0', 'AndroidOS 10', 'Bangladesh', '2025-06-04 01:20:43', '2025-06-05 22:55:14'),
(73, 26, '37.111.211.62', 'WebKit', 'desktop', 'Chrome 137.0.0.0', 'Windows 10.0', 'Bangladesh', '2025-06-04 02:18:29', '2025-07-09 20:23:10'),
(74, 27, '37.111.210.146', 'WebKit', 'phone', 'Chrome 136.0.0.0', 'AndroidOS 10', 'Bangladesh', '2025-06-04 04:26:01', '2025-06-05 19:11:44'),
(75, 28, '42.0.7.242', 'WebKit', 'phone', 'Chrome 136.0.0.0', 'AndroidOS 10', 'Bangladesh', '2025-06-04 11:14:47', '2025-06-16 16:48:30'),
(76, 29, '59.152.5.241', 'WebKit', 'phone', 'Chrome 136.0.7103.125', 'AndroidOS 11', 'Bangladesh', '2025-06-04 11:32:26', '2025-06-04 11:32:26'),
(77, 30, '103.253.246.82', 'WebKit', 'phone', 'Chrome 136.0.0.0', 'AndroidOS 10', 'Bangladesh', '2025-06-04 11:36:32', '2025-06-05 15:46:12'),
(78, 31, '103.79.179.7', 'WebKit', 'phone', 'Chrome 127.0.0.0', 'AndroidOS 10', 'Bangladesh', '2025-06-04 11:41:21', '2025-06-04 11:41:21'),
(79, 32, '103.132.181.183', 'WebKit', 'phone', 'Chrome 136.0.0.0', 'AndroidOS 10', 'Bangladesh', '2025-06-04 19:20:28', '2025-06-07 14:30:04'),
(80, 27, '112.134.152.159', 'Macintosh', 'desktop', 'Chrome 136.0.0.0', 'OS X 10_15_7', 'Sri Lanka', '2025-06-04 19:26:56', '2025-06-07 15:04:17'),
(81, 33, '219.92.196.71', 'WebKit', 'phone', 'Chrome 136.0.7103.127', 'AndroidOS 13', 'Malaysia', '2025-06-04 21:50:51', '2025-06-04 21:50:51'),
(82, 1, '106.219.232.131', 'iPhone', 'phone', 'Safari 17.6', 'iOS 17_6_1', NULL, '2025-06-05 12:18:49', '2025-06-05 12:18:49'),
(83, 34, '37.111.243.158', 'WebKit', 'phone', 'Chrome 123.0.6312.118', 'AndroidOS 11', 'Bangladesh', '2025-06-05 13:18:37', '2025-06-05 13:18:37'),
(84, 26, '37.111.219.189', 'WebKit', 'phone', 'Chrome 136.0.0.0', 'AndroidOS 10', 'Bangladesh', '2025-06-05 14:42:19', '2025-07-15 05:54:09'),
(85, 35, '37.111.212.118', 'WebKit', 'phone', 'Chrome 136.0.0.0', 'AndroidOS 10', 'Bangladesh', '2025-06-05 15:10:58', '2025-06-05 15:10:58'),
(86, 27, '39.34.157.69', 'WebKit', 'desktop', 'Chrome 137.0.0.0', 'Windows 10.0', 'Pakistan', '2025-06-05 17:29:32', '2025-06-13 15:56:11'),
(87, 36, '37.111.210.146', 'WebKit', 'phone', 'Chrome 137.0.0.0', 'AndroidOS 10', 'Bangladesh', '2025-06-05 22:50:52', '2025-06-05 22:50:52'),
(88, 1, '2400:c600:4517:e1ec:1:0:921:7ea1', 'WebKit', 'phone', 'Chrome 137.0.0.0', 'AndroidOS 10', NULL, '2025-06-05 23:36:23', '2025-06-24 18:54:53'),
(89, 37, '37.111.210.204', 'WebKit', 'desktop', 'Chrome 137.0.0.0', 'Windows 10.0', 'Bangladesh', '2025-06-06 03:18:00', '2025-06-06 17:29:07'),
(90, 37, '2400:c600:3657:ba52:1:0:69ba:1433', 'WebKit', 'phone', 'Chrome 137.0.0.0', 'AndroidOS 10', 'Bangladesh', '2025-06-06 03:19:43', '2025-06-25 12:26:19'),
(91, 25, '37.111.212.235', 'WebKit', 'phone', 'Chrome 137.0.0.0', 'AndroidOS 10', 'Bangladesh', '2025-06-06 13:24:29', '2025-06-18 01:36:03'),
(92, 38, '103.229.82.14', 'WebKit', 'phone', 'Chrome 136.0.0.0', 'AndroidOS 10', 'Bangladesh', '2025-06-06 15:22:59', '2025-06-07 20:24:29'),
(93, 39, '37.111.212.100', 'WebKit', 'phone', 'Chrome 136.0.0.0', 'AndroidOS 10', 'Bangladesh', '2025-06-07 00:20:26', '2025-06-07 00:20:26'),
(94, 40, '116.204.142.138', 'WebKit', 'phone', 'Chrome 137.0.0.0', 'AndroidOS 10', 'Bangladesh', '2025-06-07 02:36:29', '2025-06-16 21:01:35'),
(95, 1, '103.108.5.123', 'Macintosh', 'desktop', 'Chrome 137.0.0.0', 'OS X 10_15_7', NULL, '2025-06-08 16:15:32', '2025-06-08 16:15:32'),
(96, 41, '42.0.6.247', 'WebKit', 'phone', 'Chrome 133.0.0.0', 'AndroidOS 10', 'Bangladesh', '2025-06-10 11:12:39', '2025-06-17 13:29:34'),
(97, 1, '152.59.134.253', 'WebKit', 'desktop', 'Edge 137.0.0.0', 'Windows 10.0', NULL, '2025-06-10 14:57:45', '2025-06-18 12:53:11'),
(98, 42, '103.73.46.229', 'WebKit', 'phone', 'Chrome 137.0.7151.61', 'AndroidOS 10', 'Bangladesh', '2025-06-11 01:38:52', '2025-06-11 01:38:52'),
(99, 43, '37.111.221.200', 'iPhone', 'phone', 'Mozilla ', 'iOS 18_5', 'Bangladesh', '2025-06-11 15:31:23', '2025-06-11 15:31:23'),
(100, 44, '42.0.7.253', 'WebKit', 'phone', 'Chrome 136.0.7103.125', 'AndroidOS 15', 'Bangladesh', '2025-06-11 15:48:11', '2025-06-12 14:49:31'),
(101, 45, '37.111.221.189', 'WebKit', 'phone', 'Chrome 137.0.0.0', 'AndroidOS 10', 'Bangladesh', '2025-06-11 16:05:10', '2025-06-11 16:05:10'),
(102, 46, '37.111.221.94', 'WebKit', 'phone', 'Chrome 137.0.0.0', 'AndroidOS 10', 'Bangladesh', '2025-06-11 17:35:11', '2025-06-11 17:37:36'),
(103, 1, '37.111.218.207', 'WebKit', 'desktop', 'Chrome 128.0.0.0', 'Windows 10.0', NULL, '2025-06-11 22:04:03', '2025-06-18 15:29:32'),
(104, 47, '37.111.218.91', 'WebKit', 'phone', 'Chrome 137.0.0.0', 'AndroidOS 10', 'Bangladesh', '2025-06-12 16:42:24', '2025-06-12 16:42:24'),
(105, 48, '154.81.238.61', 'WebKit', 'phone', 'Chrome 137.0.0.0', 'AndroidOS 10', 'Pakistan', '2025-06-13 00:45:04', '2025-06-13 00:45:04'),
(106, 49, '103.166.25.247', 'WebKit', 'phone', 'Chrome 137.0.0.0', 'AndroidOS 10', 'Bangladesh', '2025-06-14 00:57:51', '2025-06-14 00:57:51'),
(107, 50, '37.111.206.51', 'WebKit', 'desktop', 'Chrome 128.0.0.0', 'Windows 10.0', 'Bangladesh', '2025-06-15 19:45:25', '2025-06-15 19:49:09'),
(108, 51, '221.120.101.245', 'WebKit', 'desktop', 'Chrome 137.0.0.0', 'Windows 10.0', 'Bangladesh', '2025-06-16 22:22:40', '2025-06-16 22:22:40'),
(109, 52, '103.58.74.147', 'WebKit', 'desktop', 'Edge 137.0.0.0', 'Windows 10.0', 'Bangladesh', '2025-06-16 23:47:48', '2025-06-16 23:47:48'),
(110, 26, '102.90.117.210', 'WebKit', 'phone', 'Chrome 116.0.0.0', 'AndroidOS 9', 'Nigeria', '2025-06-17 00:19:48', '2025-06-17 00:19:48'),
(111, 26, '175.107.220.213', 'iPhone', 'phone', 'Chrome 137.0.7151.107', 'iOS 18_3_1', 'Pakistan', '2025-06-17 01:15:47', '2025-06-17 01:15:47'),
(112, 26, '37.111.218.249', 'WebKit', 'desktop', 'Chrome 128.0.0.0', 'Windows 10.0', 'Bangladesh', '2025-06-17 05:48:35', '2025-06-17 07:02:10'),
(113, 26, '152.59.134.253', 'WebKit', 'desktop', 'Edge 137.0.0.0', 'Windows 10.0', 'India', '2025-06-17 14:38:28', '2025-06-18 12:47:51'),
(114, 26, '58.65.221.73', 'iPhone', 'phone', 'Safari 18.5', 'iOS 18_5', 'Pakistan', '2025-06-18 03:37:14', '2025-06-18 03:37:14'),
(115, 26, '2409:40d1:2005:81f4:f90c:ba2d:c1cb:3c21', 'WebKit', 'phone', 'Chrome 125.0.6422.35', 'AndroidOS 11', 'India', '2025-06-22 07:13:37', '2025-06-22 07:13:37'),
(116, 26, '2401:1900:8076:e83::1', 'WebKit', 'phone', 'Chrome 137.0.0.0', 'AndroidOS 10', 'Bangladesh', '2025-06-23 19:54:37', '2025-07-15 20:54:20'),
(117, 1, '23.160.72.197', 'WebKit', 'desktop', 'Chrome 138.0.0.0', 'Windows 10.0', NULL, '2025-06-28 09:29:07', '2025-07-04 15:41:30'),
(118, 26, '37.111.222.176', 'WebKit', 'desktop', 'Chrome 138.0.0.0', 'Windows 10.0', 'Bangladesh', '2025-06-28 12:52:57', '2025-07-14 14:23:41'),
(119, 37, '37.111.194.181', 'WebKit', 'phone', 'Chrome 136.0.0.0', 'AndroidOS 10', 'Bangladesh', '2025-07-05 21:06:20', '2025-07-05 21:06:20'),
(120, 53, '2400:c600:3581:8a1d:1:0:47d1:37c8', 'WebKit', 'phone', 'Chrome 137.0.0.0', 'AndroidOS 10', 'Bangladesh', '2025-07-05 21:59:42', '2025-07-05 21:59:42'),
(121, 53, '37.111.206.136', 'WebKit', 'phone', 'Chrome 136.0.0.0', 'AndroidOS 10', 'Bangladesh', '2025-07-06 07:51:53', '2025-07-06 07:51:53'),
(122, 54, '37.111.206.136', 'WebKit', 'desktop', 'Chrome 137.0.0.0', 'Windows 10.0', 'Bangladesh', '2025-07-06 17:46:11', '2025-07-06 17:46:11'),
(123, 54, '37.111.213.119', 'WebKit', 'phone', 'Chrome 136.0.0.0', 'AndroidOS 10', 'Bangladesh', '2025-07-07 06:36:54', '2025-07-07 06:36:54'),
(124, 54, '2405:201:5013:e83b:ac51:4c1b:11e8:3297', 'WebKit', 'desktop', 'Chrome 138.0.0.0', 'Windows 10.0', 'India', '2025-07-07 10:40:46', '2025-07-07 10:40:46'),
(125, 26, '2401:1900:8116:cc49:ed21:a2f:b45a:b483', 'WebKit', 'phone', 'Chrome 138.0.0.0', 'AndroidOS 10', 'Bangladesh', '2025-07-07 22:28:06', '2025-07-17 03:14:54');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `updates_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `width` varchar(5) DEFAULT NULL,
  `height` varchar(5) DEFAULT NULL,
  `img_type` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  `encoded` enum('yes','no') NOT NULL DEFAULT 'no',
  `video_poster` varchar(255) DEFAULT NULL,
  `duration_video` varchar(50) DEFAULT NULL,
  `quality_video` varchar(20) DEFAULT NULL,
  `video_embed` varchar(200) NOT NULL,
  `music` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_size` varchar(255) NOT NULL,
  `bytes` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `token` varchar(255) NOT NULL,
  `status` enum('active','pending') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `job_id` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `updates_id`, `user_id`, `type`, `image`, `width`, `height`, `img_type`, `video`, `encoded`, `video_poster`, `duration_video`, `quality_video`, `video_embed`, `music`, `file`, `file_name`, `file_size`, `bytes`, `mime`, `token`, `status`, `created_at`, `updated_at`, `job_id`) VALUES
(2, 0, 11, 'image', '1168271c45360d01747393605ecwbvbvphhdwanwq4id8.jpg', '678', '900', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', '319513', 'image/jpeg', 'LY7VCVLb5K2g6RgTL8ZhFja8UaoGNMDObfro3oZvg3f80AACZ0MX0uVqerwx9aiu4uhaEHa2EFjBcfJGzef9B8zoMMbsVg7UpAbAAdR1b2vYkOFPI2MENrBF9SX6j4vpXpRaxCmdeIrjoHi8Y8pNOG68271c453f9081747393605', 'pending', '2025-05-16 15:06:45', '2025-05-16 15:06:45', NULL),
(3, 0, 11, 'image', '116832e574ec6a41748166004zdkh22jnhtfjgwkb18nt.jpg', '720', '432', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', '181818', 'image/jpeg', 'TZsagYaiIEVafX6ffYnmqmR3l4e6dbDrAjJ5oxtIEnaHHV0iLLVPAMlVRsU4nNZjuBM9J74ffypCcMe9TeFMW3kxKIAvxPJNAgoliOSNacceXZHLouMfJ3cpBzmbhWgSvZVR7yjmSE4hdxJDbiveGd6832e574f2daf1748166004', 'pending', '2025-05-25 13:40:05', '2025-05-25 13:40:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_messages`
--

CREATE TABLE `media_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `messages_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(100) NOT NULL,
  `file` varchar(255) NOT NULL,
  `width` varchar(5) DEFAULT NULL,
  `height` varchar(5) DEFAULT NULL,
  `video_poster` varchar(255) DEFAULT NULL,
  `duration_video` varchar(50) DEFAULT NULL,
  `quality_video` varchar(20) DEFAULT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_size` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `status` enum('active','pending') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `encoded` enum('yes','no') NOT NULL DEFAULT 'no',
  `job_id` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_messages`
--

INSERT INTO `media_messages` (`id`, `messages_id`, `type`, `file`, `width`, `height`, `video_poster`, `duration_video`, `quality_video`, `file_name`, `file_size`, `token`, `status`, `created_at`, `updated_at`, `encoded`, `job_id`) VALUES
(2, 67, 'image', '2683770762c20e1748463734ukt8ammnt9anf037gwpd.jpg', '248', '248', NULL, NULL, NULL, '', '', 'l02odaR5Jh9mfoE4K7g4wz1MTaFZB1IPkuRHuvLUYkNLri6KDkJEGxTMIw9SCDcEKn90bjXWRlEkYvy3MsOgAeaEFnY4Shf7koKIPfEVh4hFbivrT6Qa6fFH0V83tTKhtjuWxt1g3MWYCqYuoghuwY683770762ea451748463734', 'active', '2025-05-29 00:22:14', '2025-05-29 00:22:25', 'no', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_products`
--

CREATE TABLE `media_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_stories`
--

CREATE TABLE `media_stories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `stories_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(100) NOT NULL,
  `video_length` varchar(20) DEFAULT NULL,
  `video_poster` varchar(100) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `font_color` varchar(50) NOT NULL DEFAULT '#ffffff',
  `font` varchar(50) NOT NULL DEFAULT 'Arial',
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `job_id` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_welcome_messages`
--

CREATE TABLE `media_welcome_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(100) NOT NULL,
  `file` varchar(255) NOT NULL,
  `width` varchar(5) DEFAULT NULL,
  `height` varchar(5) DEFAULT NULL,
  `video_poster` varchar(255) DEFAULT NULL,
  `duration_video` varchar(50) DEFAULT NULL,
  `quality_video` varchar(20) DEFAULT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_size` varchar(255) NOT NULL,
  `file_size_bytes` varchar(255) DEFAULT NULL,
  `mime_type` varchar(255) DEFAULT NULL,
  `encoded` enum('yes','no') NOT NULL DEFAULT 'no',
  `token` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `job_id` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `conversations_id` int(10) UNSIGNED NOT NULL,
  `from_user_id` int(10) UNSIGNED NOT NULL,
  `to_user_id` int(10) UNSIGNED NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attach_file` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` enum('new','readed') NOT NULL DEFAULT 'new',
  `remove_from` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 Delete, 1 Active',
  `file` varchar(150) NOT NULL,
  `original_name` varchar(255) NOT NULL,
  `format` varchar(10) NOT NULL,
  `size` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `tip` enum('yes','no') NOT NULL DEFAULT 'no',
  `tip_amount` int(10) UNSIGNED NOT NULL,
  `mode` enum('active','pending') NOT NULL DEFAULT 'active',
  `gift_id` int(10) UNSIGNED DEFAULT NULL,
  `gift_amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2025_05_15_123537_add_category_column_to_live_streaming_table', 1),
('2025_05_25_132724_create_payment_transactions_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `destination` int(10) UNSIGNED NOT NULL,
  `author` int(10) UNSIGNED NOT NULL,
  `target` int(10) UNSIGNED NOT NULL,
  `type` int(10) UNSIGNED NOT NULL COMMENT '1 Subscribed, 2  Like, 3 reply, 4 Like Comment',
  `status` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0 unseen, 1 seen',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `destination`, `author`, `target`, `type`, `status`, `created_at`) VALUES
(1, 1, 11, 11, 5, '1', '2025-05-25 14:53:40'),
(2, 1, 2, 0, 23, '1', '2025-05-27 15:59:14'),
(16, 25, 25, 25, 18, '1', '2025-06-04 01:43:33');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(150) NOT NULL,
  `content` mediumtext DEFAULT NULL,
  `slug` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `lang` char(10) NOT NULL DEFAULT 'es',
  `access` varchar(50) NOT NULL DEFAULT 'all'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `content`, `slug`, `description`, `keywords`, `lang`, `access`) VALUES
(2, 'Terms of Service', '<h1>Terms of Service</h1>\r\n\r\n<p>Last updated: June 04, 2025</p>\r\n\r\n<p>These Terms of Use describe Our policies and procedures on the collection, use, and disclosure of Your information when You use the Service and tell You about Your privacy rights and how the law protects You.</p>\r\n\r\n<h2>Interpretation and Definitions</h2>\r\n\r\n<h3>Interpretation</h3>\r\n\r\n<p>The words of which the initial letter is capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural.</p>\r\n\r\n<h3>Definitions</h3>\r\n\r\n<p>For the purposes of this Privacy Policy:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Account</strong>&nbsp;means a unique account created for You to access our Service or parts of our Service.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Affiliate</strong>&nbsp;means an entity that controls, is controlled by or is under common control with a party, where &quot;control&quot; means ownership of 50% or more of the shares, equity interest or other securities entitled to vote for election of directors or other managing authority.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Company</strong>&nbsp;(referred to as either &quot;the Company&quot;, &quot;We&quot;, &quot;Us&quot; or &quot;Our&quot; in this Agreement) refers to Hubuhu Inc., Dhaka, Bangladesh.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Cookies</strong>&nbsp;are small files that are placed on Your computer, mobile device or any other device by a website, containing the details of Your browsing history on that website among its many uses.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Country</strong>&nbsp;refers to: Bangladesh</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Device</strong>&nbsp;means any device that can access the Service such as a computer, a cellphone or a digital tablet.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Personal Data</strong>&nbsp;is any information that relates to an identified or identifiable individual.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Service</strong>&nbsp;refers to the Website.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Service Provider</strong>&nbsp;means any natural or legal person who processes the data on behalf of the Company. It refers to third-party companies or individuals employed by the Company to facilitate the Service, to provide the Service on behalf of the Company, to perform services related to the Service or to assist the Company in analyzing how the Service is used.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Usage Data</strong>&nbsp;refers to data collected automatically, either generated by the use of the Service or from the Service infrastructure itself (for example, the duration of a page visit).</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Website</strong>&nbsp;refers to Hubuhu, accessible from&nbsp;<a href=\"https://hubuhu.com\" rel=\"external nofollow noopener\" target=\"_blank\">https://hubuhu.com</a></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>You</strong>&nbsp;means the individual accessing or using the Service, or the company, or other legal entity on behalf of which such individual is accessing or using the Service, as applicable.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Collecting and Using Your Personal Data</h2>\r\n\r\n<h3>Types of Data Collected</h3>\r\nPersonal Data\r\n\r\n<p>While using Our Service, We may ask You to provide Us with certain personally identifiable information that can be used to contact or identify You. Personally identifiable information may include, but is not limited to:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Email address</p>\r\n	</li>\r\n	<li>\r\n	<p>First name and last name</p>\r\n	</li>\r\n	<li>\r\n	<p>Phone number</p>\r\n	</li>\r\n	<li>\r\n	<p>Address, State, Province, ZIP/Postal code, City</p>\r\n	</li>\r\n	<li>\r\n	<p>Usage Data</p>\r\n	</li>\r\n</ul>\r\nUsage Data\r\n\r\n<p>Usage Data is collected automatically when using the Service.</p>\r\n\r\n<p>Usage Data may include information such as Your Device&#39;s Internet Protocol address (e.g. IP address), browser type, browser version, the pages of our Service that You visit, the time and date of Your visit, the time spent on those pages, unique device identifiers and other diagnostic data.</p>\r\n\r\n<p>When You access the Service by or through a mobile device, We may collect certain information automatically, including, but not limited to, the type of mobile device You use, Your mobile device unique ID, the IP address of Your mobile device, Your mobile operating system, the type of mobile Internet browser You use, unique device identifiers and other diagnostic data.</p>\r\n\r\n<p>We may also collect information that Your browser sends whenever You visit our Service or when You access the Service by or through a mobile device.</p>\r\nTracking Technologies and Cookies\r\n\r\n<p>We use Cookies and similar tracking technologies to track the activity on Our Service and store certain information. Tracking technologies used are beacons, tags, and scripts to collect and track information and to improve and analyze Our Service. The technologies We use may include:</p>\r\n\r\n<ul>\r\n	<li><strong>Cookies or Browser Cookies.</strong>&nbsp;A cookie is a small file placed on Your Device. You can instruct Your browser to refuse all Cookies or to indicate when a Cookie is being sent. However, if You do not accept Cookies, You may not be able to use some parts of our Service. Unless you have adjusted Your browser setting so that it will refuse Cookies, our Service may use Cookies.</li>\r\n	<li><strong>Web Beacons.</strong>&nbsp;Certain sections of our Service and our emails may contain small electronic files known as web beacons (also referred to as clear gifs, pixel tags, and single-pixel gifs) that permit the Company, for example, to count users who have visited those pages or opened an email and for other related website statistics (for example, recording the popularity of a certain section and verifying system and server integrity).</li>\r\n</ul>\r\n\r\n<p>Cookies can be &quot;Persistent&quot; or &quot;Session&quot; Cookies. Persistent Cookies remain on Your personal computer or mobile device when You go offline, while Session Cookies are deleted as soon as You close Your web browser. Learn more about cookies on the&nbsp;<a href=\"https://www.freeprivacypolicy.com/blog/sample-privacy-policy-template/#Use_Of_Cookies_And_Tracking\" target=\"_blank\">Free Privacy Policy website</a>&nbsp;article.</p>\r\n\r\n<p>We use both Session and Persistent Cookies for the purposes set out below:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Necessary / Essential Cookies</strong></p>\r\n\r\n	<p>Type: Session Cookies</p>\r\n\r\n	<p>Administered by: Us</p>\r\n\r\n	<p>Purpose: These Cookies are essential to provide You with services available through the Website and to enable You to use some of its features. They help to authenticate users and prevent fraudulent use of user accounts. Without these Cookies, the services that You have asked for cannot be provided, and We only use these Cookies to provide You with those services.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Cookies Policy / Notice Acceptance Cookies</strong></p>\r\n\r\n	<p>Type: Persistent Cookies</p>\r\n\r\n	<p>Administered by: Us</p>\r\n\r\n	<p>Purpose: These Cookies identify if users have accepted the use of cookies on the Website.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Functionality Cookies</strong></p>\r\n\r\n	<p>Type: Persistent Cookies</p>\r\n\r\n	<p>Administered by: Us</p>\r\n\r\n	<p>Purpose: These Cookies allow us to remember choices You make when You use the Website, such as remembering your login details or language preference. The purpose of these Cookies is to provide You with a more personal experience and to avoid You having to re-enter your preferences every time You use the Website.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>For more information about the cookies we use and your choices regarding cookies, please visit our Cookies Policy or the Cookies section of our Privacy Policy.</p>\r\n\r\n<h3>Use of Your Personal Data</h3>\r\n\r\n<p>The Company may use Personal Data for the following purposes:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>To provide and maintain our Service</strong>, including to monitor the usage of our Service.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>To manage Your Account:</strong>&nbsp;to manage Your registration as a user of the Service. The Personal Data You provide can give You access to different functionalities of the Service that are available to You as a registered user.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>For the performance of a contract:</strong>&nbsp;the development, compliance and undertaking of the purchase contract for the products, items or services You have purchased or of any other contract with Us through the Service.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>To contact You:</strong>&nbsp;To contact You by email, telephone calls, SMS, or other equivalent forms of electronic communication, such as a mobile application&#39;s push notifications regarding updates or informative communications related to the functionalities, products or contracted services, including the security updates, when necessary or reasonable for their implementation.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>To provide You</strong>&nbsp;with news, special offers and general information about other goods, services and events which we offer that are similar to those that you have already purchased or enquired about unless You have opted not to receive such information.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>To manage Your requests:</strong>&nbsp;To attend and manage Your requests to Us.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>For business transfers:</strong>&nbsp;We may use Your information to evaluate or conduct a merger, divestiture, restructuring, reorganization, dissolution, or other sale or transfer of some or all of Our assets, whether as a going concern or as part of bankruptcy, liquidation, or similar proceeding, in which Personal Data held by Us about our Service users is among the assets transferred.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>For other purposes</strong>: We may use Your information for other purposes, such as data analysis, identifying usage trends, determining the effectiveness of our promotional campaigns and to evaluate and improve our Service, products, services, marketing and your experience.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>We may share Your personal information in the following situations:</p>\r\n\r\n<ul>\r\n	<li><strong>With Service Providers:</strong>&nbsp;We may share Your personal information with Service Providers to monitor and analyze the use of our Service, to contact You.</li>\r\n	<li><strong>For business transfers:</strong>&nbsp;We may share or transfer Your personal information in connection with, or during negotiations of, any merger, sale of Company assets, financing, or acquisition of all or a portion of Our business to another company.</li>\r\n	<li><strong>With Affiliates:</strong>&nbsp;We may share Your information with Our affiliates, in which case we will require those affiliates to honor this Privacy Policy. Affiliates include Our parent company and any other subsidiaries, joint venture partners or other companies that We control or that are under common control with Us.</li>\r\n	<li><strong>With business partners:</strong>&nbsp;We may share Your information with Our business partners to offer You certain products, services or promotions.</li>\r\n	<li><strong>With other users:</strong>&nbsp;when You share personal information or otherwise interact in the public areas with other users, such information may be viewed by all users and may be publicly distributed outside.</li>\r\n	<li><strong>With Your consent</strong>: We may disclose Your personal information for any other purpose with Your consent.</li>\r\n</ul>\r\n\r\n<h3>Retention of Your Personal Data</h3>\r\n\r\n<p>The Company will retain Your Personal Data only for as long as is necessary for the purposes set out in this Privacy Policy. We will retain and use Your Personal Data to the extent necessary to comply with our legal obligations (for example, if we are required to retain your data to comply with applicable laws), resolve disputes, and enforce our legal agreements and policies.</p>\r\n\r\n<p>The Company will also retain Usage Data for internal analysis purposes. Usage Data is generally retained for a shorter period of time, except when this data is used to strengthen the security or to improve the functionality of Our Service, or We are legally obligated to retain this data for longer time periods.</p>\r\n\r\n<h3>Transfer of Your Personal Data</h3>\r\n\r\n<p>Your information, including Personal Data, is processed at the Company&#39;s operating offices and in any other places where the parties involved in the processing are located. It means that this information may be transferred to &mdash; and maintained on &mdash; computers located outside of Your state, province, country or other governmental jurisdiction where the data protection laws may differ than those from Your jurisdiction.</p>\r\n\r\n<p>Your consent to this Privacy Policy followed by Your submission of such information represents Your agreement to that transfer.</p>\r\n\r\n<p>The Company will take all steps reasonably necessary to ensure that Your data is treated securely and in accordance with this Privacy Policy and no transfer of Your Personal Data will take place to an organization or a country unless there are adequate controls in place including the security of Your data and other personal information.</p>\r\n\r\n<h3>Delete Your Personal Data</h3>\r\n\r\n<p>You have the right to delete or request that We assist in deleting the Personal Data that We have collected about You.</p>\r\n\r\n<p>Our Service may give You the ability to delete certain information about You from within the Service.</p>\r\n\r\n<p>You may update, amend, or delete Your information at any time by signing in to Your Account, if you have one, and visiting the account settings section that allows you to manage Your personal information. You may also contact Us to request access to, correct, or delete any personal information that You have provided to Us.</p>\r\n\r\n<p>Please note, however, that We may need to retain certain information when we have a legal obligation or lawful basis to do so.</p>\r\n\r\n<h3>Disclosure of Your Personal Data</h3>\r\nBusiness Transactions\r\n\r\n<p>If the Company is involved in a merger, acquisition or asset sale, Your Personal Data may be transferred. We will provide notice before Your Personal Data is transferred and becomes subject to a different Privacy Policy.</p>\r\nLaw enforcement\r\n\r\n<p>Under certain circumstances, the Company may be required to disclose Your Personal Data if required to do so by law or in response to valid requests by public authorities (e.g. a court or a government agency).</p>\r\nOther legal requirements\r\n\r\n<p>The Company may disclose Your Personal Data in the good faith belief that such action is necessary to:</p>\r\n\r\n<ul>\r\n	<li>Comply with a legal obligation</li>\r\n	<li>Protect and defend the rights or property of the Company</li>\r\n	<li>Prevent or investigate possible wrongdoing in connection with the Service</li>\r\n	<li>Protect the personal safety of Users of the Service or the public</li>\r\n	<li>Protect against legal liability</li>\r\n</ul>\r\n\r\n<h3>Security of Your Personal Data</h3>\r\n\r\n<p>The security of Your Personal Data is important to Us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While We strive to use commercially acceptable means to protect Your Personal Data, We cannot guarantee its absolute security.</p>\r\n\r\n<h2>Children&#39;s Privacy</h2>\r\n\r\n<p>Our Service does not address anyone under the age of 13. We do not knowingly collect personally identifiable information from anyone under the age of 13. If You are a parent or guardian and You are aware that Your child has provided Us with Personal Data, please contact Us. If We become aware that We have collected Personal Data from anyone under the age of 13 without verification of parental consent, We take steps to remove that information from Our servers.</p>\r\n\r\n<p>If We need to rely on consent as a legal basis for processing Your information and Your country requires consent from a parent, We may require Your parent&#39;s consent before We collect and use that information.</p>\r\n\r\n<h2>Links to Other Websites</h2>\r\n\r\n<p>Our Service may contain links to other websites that are not operated by Us. If You click on a third party link, You will be directed to that third party&#39;s site. We strongly advise You to review the Privacy Policy of every site You visit.</p>\r\n\r\n<p>We have no control over and assume no responsibility for the content, privacy policies or practices of any third party sites or services.</p>\r\n\r\n<h2>Changes to this Privacy Policy</h2>\r\n\r\n<p>We may update Our Privacy Policy from time to time. We will notify You of any changes by posting the new Privacy Policy on this page.</p>\r\n\r\n<p>We will let You know via email and/or a prominent notice on Our Service, prior to the change becoming effective and update the &quot;Last updated&quot; date at the top of this Privacy Policy.</p>\r\n\r\n<p>You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.</p>\r\n\r\n<h2>Contact Us</h2>\r\n\r\n<p>If you have any questions about this Privacy Policy, You can contact us:</p>\r\n\r\n<ul>\r\n	<li>By email:&nbsp;<a data-cfemail=\"bfcccacfcfd0cdcbffd7caddcad7ca91dcd0d2\" href=\"/cdn-cgi/l/email-protection\">[email&nbsp;protected]</a></li>\r\n</ul>', 'terms-of-service', 'Terms of Service of Sponzy', 'terms, Terms of Service', 'en', 'all'),
(3, 'Privacy', '<h1>Privacy Policy</h1>\r\n\r\n<p>Last updated: June 04, 2025</p>\r\n\r\n<p>This Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your information when You use the Service and tells You about Your privacy rights and how the law protects You.</p>\r\n\r\n<h2>Interpretation and Definitions</h2>\r\n\r\n<h3>Interpretation</h3>\r\n\r\n<p>The words of which the initial letter is capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural.</p>\r\n\r\n<h3>Definitions</h3>\r\n\r\n<p>For the purposes of this Privacy Policy:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Account</strong>&nbsp;means a unique account created for You to access our Service or parts of our Service.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Affiliate</strong>&nbsp;means an entity that controls, is controlled by or is under common control with a party, where &quot;control&quot; means ownership of 50% or more of the shares, equity interest or other securities entitled to vote for election of directors or other managing authority.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Company</strong>&nbsp;(referred to as either &quot;the Company&quot;, &quot;We&quot;, &quot;Us&quot; or &quot;Our&quot; in this Agreement) refers to Hubuhu Inc., Dhaka, Bangladesh.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Cookies</strong>&nbsp;are small files that are placed on Your computer, mobile device or any other device by a website, containing the details of Your browsing history on that website among its many uses.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Country</strong>&nbsp;refers to: Bangladesh</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Device</strong>&nbsp;means any device that can access the Service such as a computer, a cellphone or a digital tablet.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Personal Data</strong>&nbsp;is any information that relates to an identified or identifiable individual.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Service</strong>&nbsp;refers to the Website.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Service Provider</strong>&nbsp;means any natural or legal person who processes the data on behalf of the Company. It refers to third-party companies or individuals employed by the Company to facilitate the Service, to provide the Service on behalf of the Company, to perform services related to the Service or to assist the Company in analyzing how the Service is used.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Usage Data</strong>&nbsp;refers to data collected automatically, either generated by the use of the Service or from the Service infrastructure itself (for example, the duration of a page visit).</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Website</strong>&nbsp;refers to Hubuhu, accessible from&nbsp;<a href=\"https://hubuhu.com\" rel=\"external nofollow noopener\" target=\"_blank\">https://hubuhu.com</a></p>\r\n	</li>\r\n	<li>\r\n	<p><strong>You</strong>&nbsp;means the individual accessing or using the Service, or the company, or other legal entity on behalf of which such individual is accessing or using the Service, as applicable.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2>Collecting and Using Your Personal Data</h2>\r\n\r\n<h3>Types of Data Collected</h3>\r\nPersonal Data\r\n\r\n<p>While using Our Service, We may ask You to provide Us with certain personally identifiable information that can be used to contact or identify You. Personally identifiable information may include, but is not limited to:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Email address</p>\r\n	</li>\r\n	<li>\r\n	<p>First name and last name</p>\r\n	</li>\r\n	<li>\r\n	<p>Phone number</p>\r\n	</li>\r\n	<li>\r\n	<p>Address, State, Province, ZIP/Postal code, City</p>\r\n	</li>\r\n	<li>\r\n	<p>Usage Data</p>\r\n	</li>\r\n</ul>\r\nUsage Data\r\n\r\n<p>Usage Data is collected automatically when using the Service.</p>\r\n\r\n<p>Usage Data may include information such as Your Device&#39;s Internet Protocol address (e.g. IP address), browser type, browser version, the pages of our Service that You visit, the time and date of Your visit, the time spent on those pages, unique device identifiers and other diagnostic data.</p>\r\n\r\n<p>When You access the Service by or through a mobile device, We may collect certain information automatically, including, but not limited to, the type of mobile device You use, Your mobile device unique ID, the IP address of Your mobile device, Your mobile operating system, the type of mobile Internet browser You use, unique device identifiers and other diagnostic data.</p>\r\n\r\n<p>We may also collect information that Your browser sends whenever You visit our Service or when You access the Service by or through a mobile device.</p>\r\nTracking Technologies and Cookies\r\n\r\n<p>We use Cookies and similar tracking technologies to track the activity on Our Service and store certain information. Tracking technologies used are beacons, tags, and scripts to collect and track information and to improve and analyze Our Service. The technologies We use may include:</p>\r\n\r\n<ul>\r\n	<li><strong>Cookies or Browser Cookies.</strong>&nbsp;A cookie is a small file placed on Your Device. You can instruct Your browser to refuse all Cookies or to indicate when a Cookie is being sent. However, if You do not accept Cookies, You may not be able to use some parts of our Service. Unless you have adjusted Your browser setting so that it will refuse Cookies, our Service may use Cookies.</li>\r\n	<li><strong>Web Beacons.</strong>&nbsp;Certain sections of our Service and our emails may contain small electronic files known as web beacons (also referred to as clear gifs, pixel tags, and single-pixel gifs) that permit the Company, for example, to count users who have visited those pages or opened an email and for other related website statistics (for example, recording the popularity of a certain section and verifying system and server integrity).</li>\r\n</ul>\r\n\r\n<p>Cookies can be &quot;Persistent&quot; or &quot;Session&quot; Cookies. Persistent Cookies remain on Your personal computer or mobile device when You go offline, while Session Cookies are deleted as soon as You close Your web browser. Learn more about cookies on the&nbsp;<a href=\"https://www.freeprivacypolicy.com/blog/sample-privacy-policy-template/#Use_Of_Cookies_And_Tracking\" target=\"_blank\">Free Privacy Policy website</a>&nbsp;article.</p>\r\n\r\n<p>We use both Session and Persistent Cookies for the purposes set out below:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>Necessary / Essential Cookies</strong></p>\r\n\r\n	<p>Type: Session Cookies</p>\r\n\r\n	<p>Administered by: Us</p>\r\n\r\n	<p>Purpose: These Cookies are essential to provide You with services available through the Website and to enable You to use some of its features. They help to authenticate users and prevent fraudulent use of user accounts. Without these Cookies, the services that You have asked for cannot be provided, and We only use these Cookies to provide You with those services.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Cookies Policy / Notice Acceptance Cookies</strong></p>\r\n\r\n	<p>Type: Persistent Cookies</p>\r\n\r\n	<p>Administered by: Us</p>\r\n\r\n	<p>Purpose: These Cookies identify if users have accepted the use of cookies on the Website.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Functionality Cookies</strong></p>\r\n\r\n	<p>Type: Persistent Cookies</p>\r\n\r\n	<p>Administered by: Us</p>\r\n\r\n	<p>Purpose: These Cookies allow us to remember choices You make when You use the Website, such as remembering your login details or language preference. The purpose of these Cookies is to provide You with a more personal experience and to avoid You having to re-enter your preferences every time You use the Website.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>For more information about the cookies we use and your choices regarding cookies, please visit our Cookies Policy or the Cookies section of our Privacy Policy.</p>\r\n\r\n<h3>Use of Your Personal Data</h3>\r\n\r\n<p>The Company may use Personal Data for the following purposes:</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p><strong>To provide and maintain our Service</strong>, including to monitor the usage of our Service.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>To manage Your Account:</strong>&nbsp;to manage Your registration as a user of the Service. The Personal Data You provide can give You access to different functionalities of the Service that are available to You as a registered user.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>For the performance of a contract:</strong>&nbsp;the development, compliance and undertaking of the purchase contract for the products, items or services You have purchased or of any other contract with Us through the Service.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>To contact You:</strong>&nbsp;To contact You by email, telephone calls, SMS, or other equivalent forms of electronic communication, such as a mobile application&#39;s push notifications regarding updates or informative communications related to the functionalities, products or contracted services, including the security updates, when necessary or reasonable for their implementation.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>To provide You</strong>&nbsp;with news, special offers and general information about other goods, services and events which we offer that are similar to those that you have already purchased or enquired about unless You have opted not to receive such information.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>To manage Your requests:</strong>&nbsp;To attend and manage Your requests to Us.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>For business transfers:</strong>&nbsp;We may use Your information to evaluate or conduct a merger, divestiture, restructuring, reorganization, dissolution, or other sale or transfer of some or all of Our assets, whether as a going concern or as part of bankruptcy, liquidation, or similar proceeding, in which Personal Data held by Us about our Service users is among the assets transferred.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>For other purposes</strong>: We may use Your information for other purposes, such as data analysis, identifying usage trends, determining the effectiveness of our promotional campaigns and to evaluate and improve our Service, products, services, marketing and your experience.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>We may share Your personal information in the following situations:</p>\r\n\r\n<ul>\r\n	<li><strong>With Service Providers:</strong>&nbsp;We may share Your personal information with Service Providers to monitor and analyze the use of our Service, to contact You.</li>\r\n	<li><strong>For business transfers:</strong>&nbsp;We may share or transfer Your personal information in connection with, or during negotiations of, any merger, sale of Company assets, financing, or acquisition of all or a portion of Our business to another company.</li>\r\n	<li><strong>With Affiliates:</strong>&nbsp;We may share Your information with Our affiliates, in which case we will require those affiliates to honor this Privacy Policy. Affiliates include Our parent company and any other subsidiaries, joint venture partners or other companies that We control or that are under common control with Us.</li>\r\n	<li><strong>With business partners:</strong>&nbsp;We may share Your information with Our business partners to offer You certain products, services or promotions.</li>\r\n	<li><strong>With other users:</strong>&nbsp;when You share personal information or otherwise interact in the public areas with other users, such information may be viewed by all users and may be publicly distributed outside.</li>\r\n	<li><strong>With Your consent</strong>: We may disclose Your personal information for any other purpose with Your consent.</li>\r\n</ul>\r\n\r\n<h3>Retention of Your Personal Data</h3>\r\n\r\n<p>The Company will retain Your Personal Data only for as long as is necessary for the purposes set out in this Privacy Policy. We will retain and use Your Personal Data to the extent necessary to comply with our legal obligations (for example, if we are required to retain your data to comply with applicable laws), resolve disputes, and enforce our legal agreements and policies.</p>\r\n\r\n<p>The Company will also retain Usage Data for internal analysis purposes. Usage Data is generally retained for a shorter period of time, except when this data is used to strengthen the security or to improve the functionality of Our Service, or We are legally obligated to retain this data for longer time periods.</p>\r\n\r\n<h3>Transfer of Your Personal Data</h3>\r\n\r\n<p>Your information, including Personal Data, is processed at the Company&#39;s operating offices and in any other places where the parties involved in the processing are located. It means that this information may be transferred to &mdash; and maintained on &mdash; computers located outside of Your state, province, country or other governmental jurisdiction where the data protection laws may differ than those from Your jurisdiction.</p>\r\n\r\n<p>Your consent to this Privacy Policy followed by Your submission of such information represents Your agreement to that transfer.</p>\r\n\r\n<p>The Company will take all steps reasonably necessary to ensure that Your data is treated securely and in accordance with this Privacy Policy and no transfer of Your Personal Data will take place to an organization or a country unless there are adequate controls in place including the security of Your data and other personal information.</p>\r\n\r\n<h3>Delete Your Personal Data</h3>\r\n\r\n<p>You have the right to delete or request that We assist in deleting the Personal Data that We have collected about You.</p>\r\n\r\n<p>Our Service may give You the ability to delete certain information about You from within the Service.</p>\r\n\r\n<p>You may update, amend, or delete Your information at any time by signing in to Your Account, if you have one, and visiting the account settings section that allows you to manage Your personal information. You may also contact Us to request access to, correct, or delete any personal information that You have provided to Us.</p>\r\n\r\n<p>Please note, however, that We may need to retain certain information when we have a legal obligation or lawful basis to do so.</p>\r\n\r\n<h3>Disclosure of Your Personal Data</h3>\r\nBusiness Transactions\r\n\r\n<p>If the Company is involved in a merger, acquisition or asset sale, Your Personal Data may be transferred. We will provide notice before Your Personal Data is transferred and becomes subject to a different Privacy Policy.</p>\r\nLaw enforcement\r\n\r\n<p>Under certain circumstances, the Company may be required to disclose Your Personal Data if required to do so by law or in response to valid requests by public authorities (e.g. a court or a government agency).</p>\r\nOther legal requirements\r\n\r\n<p>The Company may disclose Your Personal Data in the good faith belief that such action is necessary to:</p>\r\n\r\n<ul>\r\n	<li>Comply with a legal obligation</li>\r\n	<li>Protect and defend the rights or property of the Company</li>\r\n	<li>Prevent or investigate possible wrongdoing in connection with the Service</li>\r\n	<li>Protect the personal safety of Users of the Service or the public</li>\r\n	<li>Protect against legal liability</li>\r\n</ul>\r\n\r\n<h3>Security of Your Personal Data</h3>\r\n\r\n<p>The security of Your Personal Data is important to Us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While We strive to use commercially acceptable means to protect Your Personal Data, We cannot guarantee its absolute security.</p>\r\n\r\n<h2>Children&#39;s Privacy</h2>\r\n\r\n<p>Our Service does not address anyone under the age of 13. We do not knowingly collect personally identifiable information from anyone under the age of 13. If You are a parent or guardian and You are aware that Your child has provided Us with Personal Data, please contact Us. If We become aware that We have collected Personal Data from anyone under the age of 13 without verification of parental consent, We take steps to remove that information from Our servers.</p>\r\n\r\n<p>If We need to rely on consent as a legal basis for processing Your information and Your country requires consent from a parent, We may require Your parent&#39;s consent before We collect and use that information.</p>\r\n\r\n<h2>Links to Other Websites</h2>\r\n\r\n<p>Our Service may contain links to other websites that are not operated by Us. If You click on a third party link, You will be directed to that third party&#39;s site. We strongly advise You to review the Privacy Policy of every site You visit.</p>\r\n\r\n<p>We have no control over and assume no responsibility for the content, privacy policies or practices of any third party sites or services.</p>\r\n\r\n<h2>Changes to this Privacy Policy</h2>\r\n\r\n<p>We may update Our Privacy Policy from time to time. We will notify You of any changes by posting the new Privacy Policy on this page.</p>\r\n\r\n<p>We will let You know via email and/or a prominent notice on Our Service, prior to the change becoming effective and update the &quot;Last updated&quot; date at the top of this Privacy Policy.</p>\r\n\r\n<p>You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.</p>\r\n\r\n<h2>Contact Us</h2>\r\n\r\n<p>If you have any questions about this Privacy Policy, You can contact us:</p>\r\n\r\n<ul>\r\n	<li>By email:&nbsp;<a data-cfemail=\"bfcccacfcfd0cdcbffd7caddcad7ca91dcd0d2\" href=\"/cdn-cgi/l/email-protection\">[email&nbsp;protected]</a></li>\r\n</ul>', 'privacy', '', '', 'en', 'all'),
(5, 'About us', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets<br />\r\n<br />\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\r\n', 'about', '', '', 'en', 'all'),
(8, 'How it works', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', 'how-it-works', '', '', 'en', 'all'),
(9, 'Cookies Policy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets', 'cookies', 'Page Cookies Policy', 'cookies, policy', 'en', 'all');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(10) UNSIGNED NOT NULL,
  `token` varchar(150) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `token`, `email`, `created_at`) VALUES
(3, '$2y$10$HeGSVFbl9eyOelHBhmtSGOfKI9rTLd4naly2rIpm/f7sBNbKkVL3C', 'adiba2743@gmail.com', '2025-05-16 01:34:14'),
(4, '$2y$10$1TqTAisbMmABdgIXPhwkKO82uaDuEckvqq6LUKVzrnZSDkhsheyyK', 'eklaariful@gmail.com', '2025-05-16 01:36:29'),
(5, '$2y$10$cl3ndPHp8lUBsArU96uBTORcWOhfgdAWvAtjkAHeFx3KL1J470obe', 'noman@noman.com', '2025-05-16 14:09:53'),
(7, '$2y$10$rqwz23Q7AY2XpJbU0LaAkeCMBBLJEOdB3zeZikkxQRYJ/W9Ro7OL6', 'adibajannat2743@gmail.com', '2025-06-11 02:27:42');

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(255) NOT NULL,
  `enabled` enum('1','0') NOT NULL DEFAULT '1',
  `sandbox` enum('true','false') NOT NULL DEFAULT 'true',
  `fee` decimal(3,1) NOT NULL,
  `fee_cents` decimal(6,2) NOT NULL,
  `email` varchar(80) NOT NULL,
  `token` varchar(200) NOT NULL,
  `key` varchar(255) NOT NULL,
  `key_secret` varchar(255) NOT NULL,
  `bank_info` text NOT NULL,
  `recurrent` enum('yes','no') NOT NULL,
  `logo` varchar(50) NOT NULL,
  `webhook_secret` varchar(255) NOT NULL,
  `subscription` enum('yes','no') NOT NULL DEFAULT 'yes',
  `ccbill_accnum` varchar(200) NOT NULL,
  `ccbill_subacc` varchar(200) NOT NULL,
  `ccbill_flexid` varchar(200) NOT NULL,
  `ccbill_salt` varchar(200) NOT NULL,
  `ccbill_subacc_subscriptions` varchar(200) NOT NULL,
  `project_id` varchar(255) DEFAULT NULL,
  `project_secret` varchar(255) DEFAULT NULL,
  `ccbill_datalink_username` varchar(255) DEFAULT NULL,
  `ccbill_datalink_password` varchar(255) DEFAULT NULL,
  `ccbill_skip_subaccount_cancellations` tinyint(1) NOT NULL DEFAULT 0,
  `allow_payments_alipay` tinyint(1) NOT NULL DEFAULT 0,
  `crypto_currency` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `name`, `type`, `enabled`, `sandbox`, `fee`, `fee_cents`, `email`, `token`, `key`, `key_secret`, `bank_info`, `recurrent`, `logo`, `webhook_secret`, `subscription`, `ccbill_accnum`, `ccbill_subacc`, `ccbill_flexid`, `ccbill_salt`, `ccbill_subacc_subscriptions`, `project_id`, `project_secret`, `ccbill_datalink_username`, `ccbill_datalink_password`, `ccbill_skip_subaccount_cancellations`, `allow_payments_alipay`, `crypto_currency`) VALUES
(1, 'PayPal', 'normal', '0', 'false', 5.4, 0.30, '', '02bGGfD9bHevK3eJN06CdDvFSTXsTrTG44yGdAONeN1R37jqnLY1PuNF0mJRoFnsEygyf28yePSCA1eR0alQk4BX89kGG9Rlha2D2KX55TpDFNR5o774OshrkHSZLOFo2fAhHzcWKnwsYDFKgwuaRg', '', '', '', 'yes', 'paypal.png', '', 'no', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL),
(2, 'Stripe', 'card', '0', 'false', 2.9, 0.30, '', 'asfQSGRvYzS1P0X745krAAyHeU7ZbTpHbYKnxI2abQsBUi48EpeAu5lFAU2iBmsUWO5tpgAn9zzussI4Cce5ZcANIAmfBz0bNR9g3UfR4cserhkJwZwPsETiXiZuCixXVDHhCItuXTPXXSA6KITEoT', '', '', '', 'yes', 'stripe.png', '', 'yes', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL),
(3, 'Bank', 'bank', '0', 'true', 0.0, 0.00, '', 'MUXRUWEuhBulbgDGUS4PbTCCjlUGr4VcGb59RU2rRWtgCHstntxq2eOeeDvIHKUwxj5z2njJ6DUGfmt0PzFnEWuspasmCserf705dJeQcVttZtHugTlBMlzt0Uf6K4DjVmGVtyZuPzXakjrFGVLYRd', '', '', '', 'no', '', '', 'no', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL),
(4, 'CCBill', 'card', '0', 'true', 0.0, 0.00, '', 'zYYFZRjTfypGTPg0TCgWK8SKdLjGEMuNGMYedjl1D0hgmSPDS0UUduCNqkYL609NWH6ru6qdaBGFIzxeL85HwEtIOBfEQRC16qIQZ1zkTM1wbcC4fe2Wxpom6g8zmoOR1ppFN6MbPFHUJQur434Nzg', '', '', '', 'yes', '', '', 'yes', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL),
(5, 'Paystack', 'card', '0', 'true', 0.0, 0.00, '', '4w2JnfBSvoZKLiVRzHRWu3pzkgsFslVZBn8Z4mmwzVJ5KVfiFZN9kTgfFEVu90E1wPN8TnaXhtmYKwkzZ0p6HGUo1S5yVXisVxlD2PIOcm6v096akLbMAgjxiXCdFlCALkZXqi4pfrwxpYd7BGFk8c', '', '', '', 'yes', '', '', 'yes', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL),
(6, 'Coinpayments', 'normal', '0', 'true', 0.0, 0.00, '', 'nzfADI4PgRHRn8m3r7UrR0arnfT9u1rDOQL5SKGbqPjDOZGDZA35NX3y0lQBAdmIyGVS58Rr9OtebfpGNpiXROq1G1DJNqq6xoD04fLKWTaAS2Xh3CZvECa1OfH5cchJ2P6kEl167Caax2XyAwwjGl', '', '', '', 'no', 'coinpayments.png', '', 'no', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL),
(7, 'Mercadopago', 'normal', '0', 'true', 0.0, 0.00, '', 'UmqNKk1EzDyjGgJxAswkhzL8bSdHusZh8RxF4hqzCEf52qdMOAMzMCchsKrLZgPcuTry6AZLLG7DUGwlpXVVpv1CajJbiV3j4EvPqbbIkBCoOptrDWZY1nRJhMc39v6NDOKFo9TjHQdnwU5pZSSReW', '', '', '', 'no', 'mercadopago.png', '', 'no', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL),
(8, 'Flutterwave', 'normal', '0', 'true', 0.0, 0.00, '', 'jMF4RWTW14dfJxlusZ22jGeCLdc8i3416CNiw2ny4l8kGBILQDTrhLtCsDxmb1MfBQA6xGh5BhQBrOXCUBB8lQMZrCaJQykG3Nxbv0ADFUSJiNewq7kbSkxyR3rCbbVjhBYMtWt6dpJTB78CafpA6T', '', '', '', 'no', 'flutterwave.png', '', 'no', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL),
(9, 'Mollie', 'normal', '0', 'true', 0.0, 0.00, '', 'EqvhQZimw0L3zWQ35AV93iDOqgQnkXV9cqLnIvgsnz2zRLpjeZUv5JnC3QzTjtctYuVmzuo06N31tLCRPFJNkomdh7Rhk2zxe68GzgWsL1hc6YEM5V5W6JVnqwQfAzNGZkY6ZRFKmZCMbFQXOF3WkR', '', '', '', 'no', 'mollie.png', '', 'no', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL),
(10, 'Razorpay', 'normal', '0', 'true', 0.0, 0.00, '', 'PsNqGq2rlLjo4AaTTsJpxshttwFFrLXjaKcwwQeG2r8aekDoETl9OG1cqND9PluycCfXazyzUiLo7ZFWs2tBWYwOpGcM8i5ID93Kr7Y6l79XrBcST56QONVpEcAuLRs36Z2t1Q1MBlR315c6vSpAFX', '', '', '', 'no', 'razorpay.png', '', 'no', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL),
(11, 'Coinbase', 'normal', '0', 'true', 0.0, 0.00, '', 'sjuRSAj4VdjaBx2bcdXgDbvTdpiHJF40CNsX5vqw4VaaaohvDS48Oc30N6DAxIxChfd2qWQ99q6e11E90OOKwmo0RbXUv3fdpPksWMvJUkm8i7F5ajbsy0LbjqyidUBqJP0BG6H3NkidnbhtfcDF45', '', '', '', 'no', 'coinbase.png', '', 'no', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL),
(12, 'NowPayments', 'normal', '0', 'true', 0.0, 0.00, '', '4DPdFIbqqPqI8XjseCCV1RRVwVuuQx6WtYdHIkMDtxgUKCQaS9Mqww4WUwa6fIxn7NN9ediLstZyIYQQIIt9l6rUANRSzrUVt86J5FopCkZHvysC8CMRBS3LOnKDbNHiUmVh91CkmvjiwCrFApfrtH', '', '', '', 'no', 'nowpayments.png', '', 'no', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL),
(13, 'Cardinity', 'card', '0', 'true', 0.0, 0.00, '', '0DBObWPPA7adVNLvhRC1YwZBANmK4i0PBREfPzyuG0IdJn1qP0X5jkIPsMNCAXh3plFI8IRXm0onNNjPPWnCqoOP89ZCG3ycIYLwX9x6kxYBW8vci5BGFgCG3BTGI7ytEkLnxz9BuJV1N9XfhDexPd', '', '', '', 'yes', '', '', 'yes', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL),
(14, 'Binance', 'normal', '0', 'false', 0.0, 0.00, '', 'Hmo74bTxZMErUhHiiy1kPWECIgcAyt7PPCMkXfE4ZuT5HuCLC9rew9utO32bsh99RaBaqaA57ND1HY3n81M4JueKaeRQxsmWSsKUy8sSLwxWPo4ONolGcJcFSWLsrTF7aZUxcRrpT9Npp0TBZKJbVi', '', '', '', 'no', 'binance.png', '', 'no', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, ''),
(15, 'Paystation', '', '1', 'false', 0.0, 0.00, '', '', '1138-1747495032', 'H%b$032@', '', 'yes', '', '', 'yes', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_transactions`
--

CREATE TABLE `payment_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Pending',
  `trx_id` varchar(255) DEFAULT NULL,
  `payer_mobile` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_transactions`
--

INSERT INTO `payment_transactions` (`id`, `invoice_number`, `user_id`, `amount`, `status`, `trx_id`, `payer_mobile`, `payment_method`, `paid_at`, `created_at`, `updated_at`) VALUES
(1, 'PSH68335eb458deb1748197044', 0, 20.00, 'Pending', NULL, NULL, NULL, NULL, '2025-05-25 22:17:24', '2025-05-25 22:17:24'),
(2, 'PSH68335ecdeb3af1748197069', 0, 100.00, 'Pending', NULL, NULL, NULL, NULL, '2025-05-25 22:17:49', '2025-05-25 22:17:49'),
(3, 'PSH68335f1ae3b6a1748197146', 0, 21.00, 'Pending', NULL, NULL, NULL, NULL, '2025-05-25 22:19:06', '2025-05-25 22:19:06'),
(4, 'PSH68335f59973e81748197209', 0, 21.00, 'Pending', NULL, NULL, NULL, NULL, '2025-05-25 22:20:09', '2025-05-25 22:20:09'),
(5, 'PSH683360fa65adb1748197626', 1, 10.00, 'Success', 'CEQ5EH5U1D', '01928057952', 'bKash', '2025-05-26 04:28:22', '2025-05-25 22:27:06', '2025-05-25 23:41:26'),
(6, 'PSH6833614f73a6a1748197711', 1, 21.00, 'Pending', NULL, NULL, NULL, NULL, '2025-05-25 22:28:31', '2025-05-25 22:28:31'),
(7, 'PSH683365545c2ab1748198740', 2, 10.00, 'Pending', NULL, NULL, NULL, NULL, '2025-05-25 22:45:40', '2025-05-25 22:45:40'),
(8, 'PSH683372a05599b1748202144', 1, 5.00, 'Pending', NULL, NULL, NULL, NULL, '2025-05-25 23:42:24', '2025-05-25 23:42:24'),
(9, 'PSH683372dcf3c831748202204', 1, 10.00, 'Pending', NULL, NULL, NULL, NULL, '2025-05-25 23:43:25', '2025-05-25 23:43:25'),
(10, 'PSH683374145a0de1748202516', 1, 5.00, 'Pending', NULL, NULL, NULL, NULL, '2025-05-25 23:48:36', '2025-05-25 23:48:36'),
(11, 'PSH68337453175351748202579', 1, 5.00, 'Pending', NULL, NULL, NULL, NULL, '2025-05-25 23:49:39', '2025-05-25 23:49:39'),
(12, 'PSH683374a7b7f561748202663', 1, 2.00, 'Success', 'CEQ7EHU4NJ', '01928057952', 'bKash', '2025-05-26 05:52:14', '2025-05-25 23:51:03', '2025-05-25 23:52:10'),
(13, 'PSH6833780682b1f1748203526', 1, 12.00, 'Pending', NULL, NULL, NULL, NULL, '2025-05-26 00:05:26', '2025-05-26 00:05:26'),
(14, 'PSH68337999cc6741748203929', 1, 2.00, 'Pending', NULL, NULL, NULL, NULL, '2025-05-26 00:12:09', '2025-05-26 00:12:09'),
(15, 'PSH683379a8cf5de1748203944', 1, 2.00, 'Success', 'CEQ2EHXX46', '01928057952', 'bKash', '2025-05-26 06:13:38', '2025-05-26 00:12:24', '2025-05-26 00:13:34'),
(16, 'PSH683482aa6d0831748271786', 1, 50.00, 'Pending', NULL, NULL, NULL, NULL, '2025-05-26 19:03:06', '2025-05-26 19:03:06'),
(17, 'PSH68348572983301748272498', 1, 2.00, 'Pending', NULL, NULL, NULL, NULL, '2025-05-26 19:14:58', '2025-05-26 19:14:58'),
(18, 'PSH68348e141fa2a1748274708', 1, 2.00, 'Success', 'CEQ9F9NNLN', '01710651548', 'bKash', '2025-05-27 01:52:39', '2025-05-26 19:51:48', '2025-05-26 19:52:35'),
(19, 'PSH6834ef2553c861748299557', 2, 3.00, 'Success', '73YRHQKC', '017****3182', 'Nagad', '2025-05-27 08:46:55', '2025-05-27 02:45:57', '2025-05-27 02:46:50'),
(20, 'PSH6836b9b9592211748416953', 2, 2.00, 'Success', '73YYT3FR', '017****3182', 'Nagad', '2025-05-28 17:23:25', '2025-05-28 11:22:33', '2025-05-28 11:23:20'),
(21, 'PSH6836f09917ae81748431001', 2, 2.00, 'Pending', NULL, NULL, NULL, NULL, '2025-05-28 15:16:41', '2025-05-28 15:16:41'),
(22, 'PSH6836f14ec71351748431182', 2, 2.00, 'Pending', NULL, NULL, NULL, NULL, '2025-05-28 15:19:42', '2025-05-28 15:19:42'),
(23, 'PSH68384803792fc1748518915', 2, 2.00, 'Success', '73Z7RK29', '017****3182', 'Nagad', '2025-05-29 21:43:04', '2025-05-29 15:41:55', '2025-05-29 15:43:00'),
(24, 'PSH6838de7aae3ac1748557434', 1, 2.00, 'Pending', NULL, NULL, NULL, NULL, '2025-05-30 02:23:54', '2025-05-30 02:23:54'),
(25, 'PSH6838dec970b961748557513', 1, 20.00, 'Pending', NULL, NULL, NULL, NULL, '2025-05-30 02:25:13', '2025-05-30 02:25:13'),
(26, 'PSH68395eacdb7a91748590252', 1, 5.00, 'Pending', NULL, NULL, NULL, NULL, '2025-05-30 11:30:52', '2025-05-30 11:30:52'),
(27, 'PSH6839604459a7e1748590660', 1, 20.00, 'Pending', NULL, NULL, NULL, NULL, '2025-05-30 11:37:40', '2025-05-30 11:37:40'),
(28, 'PSH68396fc65b31e1748594630', 1, 2.00, 'Pending', NULL, NULL, NULL, NULL, '2025-05-30 12:43:50', '2025-05-30 12:43:50'),
(29, 'PSH68396fe5f40c91748594661', 1, 5.00, 'Pending', NULL, NULL, NULL, NULL, '2025-05-30 12:44:22', '2025-05-30 12:44:22'),
(30, 'PSH68397009c927b1748594697', 1, 5.00, 'Pending', NULL, NULL, NULL, NULL, '2025-05-30 12:44:57', '2025-05-30 12:44:57'),
(31, 'PSH6839705f81e721748594783', 1, 2.00, 'Pending', NULL, NULL, NULL, NULL, '2025-05-30 12:46:23', '2025-05-30 12:46:23'),
(32, 'PSH68397156968d31748595030', 1, 2.00, 'Pending', NULL, NULL, NULL, NULL, '2025-05-30 12:50:30', '2025-05-30 12:50:30'),
(33, 'PSH6839718eaae581748595086', 1, 5.00, 'Success', '73ZCXJX3', '017****3182', 'Nagad', '2025-05-30 18:52:09', '2025-05-30 12:51:26', '2025-05-30 12:52:04'),
(34, 'PSH683971c0b18751748595136', 1, 5.00, 'Pending', NULL, NULL, NULL, NULL, '2025-05-30 12:52:16', '2025-05-30 12:52:16'),
(35, 'PSH683971ed63ecf1748595181', 1, 5.00, 'Pending', NULL, NULL, NULL, NULL, '2025-05-30 12:53:01', '2025-05-30 12:53:01'),
(36, 'PSH683a325ed40e41748644446', 1, 2.00, 'Pending', NULL, NULL, NULL, NULL, '2025-05-31 02:34:06', '2025-05-31 02:34:06'),
(37, 'PSH683a32b7dc26c1748644535', 1, 2.00, 'Pending', NULL, NULL, NULL, NULL, '2025-05-31 02:35:35', '2025-05-31 02:35:35'),
(38, 'PSH683a333c7e2f31748644668', 1, 2.00, 'Pending', NULL, NULL, NULL, NULL, '2025-05-31 02:37:48', '2025-05-31 02:37:48'),
(39, 'PSH683a34108ff9c1748644880', 1, 3.00, 'Pending', NULL, NULL, NULL, NULL, '2025-05-31 02:41:20', '2025-05-31 02:41:20'),
(40, 'PSH683a5e61c41181748655713', 1, 2.00, 'Pending', NULL, NULL, NULL, NULL, '2025-05-31 05:41:53', '2025-05-31 05:41:53'),
(41, 'PSH683a9ce08eac31748671712', 1, 2.00, 'Success', '73ZJ0EIG', '017****3182', 'Nagad', '2025-05-31 16:09:22', '2025-05-31 10:08:32', '2025-05-31 10:09:18'),
(42, 'PSH683c66126220c1748788754', 18, 2.00, 'Success', 'CF17KDM1YH', '01704052863', 'bKash', '2025-06-02 00:40:18', '2025-06-01 18:39:14', '2025-06-01 18:40:24'),
(43, 'PSH684801bb81e3f1749549499', 41, 1000.00, 'Pending', NULL, NULL, NULL, NULL, '2025-06-10 13:58:19', '2025-06-10 13:58:19'),
(44, 'PSH684ee84e8a8671750001742', 1, 14.00, 'Success', '741E9MAG', '017****3182', 'Nagad', '2025-06-16 01:37:38', '2025-06-15 19:35:42', '2025-06-15 19:37:42'),
(45, 'PSH684ee91a18dee1750001946', 1, 10.00, 'Pending', NULL, NULL, NULL, NULL, '2025-06-15 19:39:06', '2025-06-15 19:39:06'),
(46, 'PSH6851e064976d71750196324', 25, 10.00, 'Pending', NULL, NULL, NULL, NULL, '2025-06-18 01:38:44', '2025-06-18 01:38:44'),
(47, 'PSH6860411c5d9551751138588', 26, 10.00, 'Pending', NULL, NULL, NULL, NULL, '2025-06-28 19:23:08', '2025-06-28 19:23:08'),
(48, 'PSH686af7d0860711751840720', 26, 10.00, 'Pending', NULL, NULL, NULL, NULL, '2025-07-06 22:25:20', '2025-07-06 22:25:20');

-- --------------------------------------------------------

--
-- Table structure for table `pay_per_views`
--

CREATE TABLE `pay_per_views` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `updates_id` int(10) UNSIGNED NOT NULL,
  `messages_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `interval` varchar(100) NOT NULL,
  `paystack` varchar(150) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` char(20) NOT NULL DEFAULT 'digital',
  `price` decimal(10,2) NOT NULL,
  `delivery_time` int(10) UNSIGNED NOT NULL,
  `country_free_shipping` char(20) NOT NULL,
  `tags` text NOT NULL,
  `description` text NOT NULL,
  `file` varchar(255) NOT NULL,
  `mime` varchar(50) DEFAULT NULL,
  `extension` varchar(50) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shipping_fee` decimal(10,2) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `box_contents` varchar(200) NOT NULL,
  `category` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactions_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `products_id` int(10) UNSIGNED NOT NULL,
  `delivery_status` varchar(50) NOT NULL DEFAULT 'delivered',
  `description_custom_content` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `city` varchar(150) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `phone` char(20) DEFAULT NULL,
  `expired_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `referred_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referral_transactions`
--

CREATE TABLE `referral_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactions_id` int(10) UNSIGNED DEFAULT NULL,
  `referrals_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `referred_by` int(10) UNSIGNED NOT NULL,
  `earnings` double(10,2) NOT NULL,
  `type` char(25) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `updates_id` bigint(20) UNSIGNED NOT NULL,
  `comments_id` bigint(20) UNSIGNED NOT NULL,
  `reply` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `report_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(100) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `user_id`, `report_id`, `type`, `reason`, `message`, `created_at`) VALUES
(2, 26, 26, 'user', 'copyright', 'test', '2025-06-28 15:21:07');

-- --------------------------------------------------------

--
-- Table structure for table `reserved`
--

CREATE TABLE `reserved` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `reserved`
--

INSERT INTO `reserved` (`id`, `name`) VALUES
(14, 'account'),
(31, 'api'),
(2, 'app'),
(49, 'artisan'),
(47, 'blog'),
(30, 'bootstrap'),
(34, 'categories'),
(36, 'collections'),
(29, 'comment'),
(42, 'config'),
(25, 'contact'),
(45, 'core'),
(46, 'cpanel'),
(32, 'creators'),
(37, 'dashboard'),
(41, 'database'),
(50, 'explore'),
(35, 'featured'),
(1, 'fuck'),
(9, 'goods'),
(52, 'home'),
(11, 'jobs'),
(21, 'join'),
(53, 'lang'),
(16, 'latest'),
(20, 'login'),
(33, 'logout'),
(27, 'members'),
(13, 'messages'),
(19, 'notifications'),
(48, 'offline'),
(15, 'popular'),
(6, 'porn'),
(12, 'projects'),
(3, 'public'),
(23, 'register'),
(40, 'resources'),
(39, 'routes'),
(17, 'search'),
(7, 'sex'),
(51, 'shop'),
(26, 'signup'),
(44, 'storage'),
(8, 'tags'),
(38, 'tests'),
(24, 'upgrade'),
(28, 'upload'),
(4, 'vendor'),
(5, 'xxx');

-- --------------------------------------------------------

--
-- Table structure for table `restrictions`
--

CREATE TABLE `restrictions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_restricted` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_categories`
--

CREATE TABLE `shop_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `countries_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `code` char(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stories`
--

CREATE TABLE `stories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stories`
--

INSERT INTO `stories` (`id`, `user_id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 26, 'test', 'active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `story_backgrounds`
--

CREATE TABLE `story_backgrounds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `story_backgrounds`
--

INSERT INTO `story_backgrounds` (`id`, `name`) VALUES
(1, '01.jpg'),
(2, '02.png'),
(3, '03.jpg'),
(4, '04.jpg'),
(5, '05.jpg'),
(6, '06.png'),
(7, '07.jpg'),
(8, '08.png'),
(9, '09.jpg'),
(10, '10.png'),
(11, '11.jpg'),
(12, '12.jpg'),
(13, '13.jpg'),
(14, '14.jpg'),
(15, '15.png');

-- --------------------------------------------------------

--
-- Table structure for table `story_fonts`
--

CREATE TABLE `story_fonts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `story_views`
--

CREATE TABLE `story_views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `media_stories_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stripe_state_tokens`
--

CREATE TABLE `stripe_state_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `creator_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `stripe_id` varchar(255) NOT NULL,
  `stripe_status` varchar(255) NOT NULL,
  `stripe_price` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_payment` varchar(255) DEFAULT NULL,
  `free` enum('yes','no') NOT NULL DEFAULT 'no',
  `subscription_id` varchar(50) NOT NULL,
  `cancelled` enum('yes','no') NOT NULL DEFAULT 'no',
  `rebill_wallet` enum('on','off') NOT NULL DEFAULT 'off',
  `interval` varchar(100) NOT NULL DEFAULT 'monthly',
  `taxes` text DEFAULT NULL,
  `payment_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_deleteds`
--

CREATE TABLE `subscription_deleteds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `creator_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_items`
--

CREATE TABLE `subscription_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `stripe_id` varchar(255) NOT NULL,
  `stripe_product` varchar(255) DEFAULT NULL,
  `stripe_price` varchar(255) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

CREATE TABLE `tax_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 1,
  `percentage` decimal(5,2) NOT NULL,
  `country` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `iso_state` char(10) DEFAULT NULL,
  `stripe_id` varchar(100) DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `txn_id` varchar(250) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `subscriptions_id` int(10) UNSIGNED NOT NULL,
  `subscribed` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `earning_net_user` decimal(10,2) NOT NULL,
  `earning_net_admin` decimal(10,2) NOT NULL,
  `payment_gateway` varchar(100) NOT NULL,
  `approved` varchar(50) NOT NULL DEFAULT '1' COMMENT '0 Pending, 1 Success, 2 Canceled',
  `amount` float NOT NULL,
  `type` varchar(100) NOT NULL DEFAULT 'subscription',
  `percentage_applied` varchar(50) NOT NULL,
  `referred_commission` int(10) UNSIGNED NOT NULL,
  `taxes` text DEFAULT NULL,
  `direct_payment` tinyint(1) NOT NULL DEFAULT 0,
  `gift_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `txn_id`, `user_id`, `subscriptions_id`, `subscribed`, `created_at`, `earning_net_user`, `earning_net_admin`, `payment_gateway`, `approved`, `amount`, `type`, `percentage_applied`, `referred_commission`, `taxes`, `direct_payment`, `gift_id`) VALUES
(38, 'w_yWW3y5Gv8UTHODs4tTBPZgT0Q', 1, 0, 17, '2025-05-31 18:52:24', 4.75, 0.25, 'Wallet', '1', 5, 'tip', '5%', 0, '', 0, NULL),
(39, 'w_SWW8L390DHqGqUImvwyd0j2bg', 1, 0, 18, '2025-06-01 19:19:47', 4.75, 0.25, 'Wallet', '1', 5, 'tip', '5%', 0, '', 0, NULL),
(40, 'private_live_t5bGGs9rSfiID8yA2ZGcSSuA2', 18, 0, 1, '2025-06-02 12:51:49', 0.00, 0.00, 'Wallet', '2', 0, 'live_streaming_private', '5%', 0, '', 0, NULL),
(41, 'private_live_LFhOqcbehOzZqFFzdeLCRKZc3', 18, 0, 1, '2025-06-02 15:07:09', 0.00, 0.00, 'Wallet', '2', 0, 'live_streaming_private', '5%', 0, '', 0, NULL),
(42, 'private_live_zCY1wnGOAtD7HqZTM5ChZwV9u', 18, 0, 1, '2025-06-02 15:08:12', 0.00, 0.00, 'Wallet', '2', 0, 'live_streaming_private', '5%', 0, '', 0, NULL),
(43, 'w_nvEbD2v3VCVBj2FN8Plk22lgQ', 18, 0, 1, '2025-06-02 15:10:43', 9.50, 0.50, 'Wallet', '1', 10, 'tip', '5%', 0, '', 0, NULL),
(44, 'live_rWhPpmFu2xUzEa5SRrK8h7Vxz', 19, 0, 18, '2025-06-02 17:50:38', 19.00, 1.00, 'Wallet', '1', 20, 'live', '5%', 0, '', 0, NULL),
(45, 'live_i6cxhCx1spc4HxpGP8mkwqMze', 20, 0, 18, '2025-06-02 18:12:59', 19.00, 1.00, 'Wallet', '1', 20, 'live', '5%', 0, '', 0, NULL),
(46, 'live_Rj1x0LD8BQYMogbR2FmA4M66R', 20, 0, 18, '2025-06-02 18:23:33', 19.00, 1.00, 'Wallet', '1', 20, 'live', '5%', 0, '', 0, NULL),
(47, 'private_live_NhFOWWKxqJwgDqyny9FyOeGO9', 18, 0, 1, '2025-06-02 21:21:37', 0.00, 0.00, 'Wallet', '1', 0, 'live_streaming_private', '5%', 0, '', 0, NULL),
(48, 'private_live_1aeqp72hK2n2bNBysROKDD1yL', 18, 0, 1, '2025-06-02 21:41:38', 0.00, 0.00, 'Wallet', '2', 0, 'live_streaming_private', '5%', 0, '', 0, NULL),
(49, 'w_amZ2EWiUedWznjL3JJHKetEiD', 1, 0, 19, '2025-06-03 11:38:02', 19.00, 1.00, 'Wallet', '1', 20, 'tip', '5%', 0, '', 0, NULL),
(50, 'private_live_wb1FqnpRjI2W2D6EfcMlyI1Gw', 18, 0, 20, '2025-06-03 13:02:22', 38.00, 2.00, 'Wallet', '1', 40, 'live_streaming_private', '5%', 0, '', 0, NULL),
(51, 'private_live_GhFMY3Tj4l5U0zYtOFmzKgwro', 18, 0, 20, '2025-06-03 13:06:04', 38.00, 2.00, 'Wallet', '1', 40, 'live_streaming_private', '5%', 0, '', 0, NULL),
(52, 'private_live_PjTAz53vhcdH9EUEIlRB35RHz', 18, 0, 20, '2025-06-03 13:13:26', 38.00, 2.00, 'Wallet', '1', 40, 'live_streaming_private', '5%', 0, '', 0, NULL),
(53, 'private_live_MDkPJz0XRaoDcyt4ytD7FWWQ3', 22, 0, 19, '2025-06-03 13:59:10', 0.00, 0.00, 'Wallet', '2', 10, 'live_streaming_private', '5%', 0, '', 0, NULL),
(54, 'live_J98qNN77B78WYJlecA8okoQ82', 27, 0, 1, '2025-06-05 17:36:32', 19.00, 1.00, 'Wallet', '1', 20, 'live', '5%', 0, '', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `two_factor_codes`
--

CREATE TABLE `two_factor_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(25) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `updates`
--

CREATE TABLE `updates` (
  `id` int(11) NOT NULL,
  `title` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `token_id` varchar(255) NOT NULL,
  `locked` enum('yes','no') NOT NULL DEFAULT 'no',
  `fixed_post` enum('0','1') NOT NULL DEFAULT '0',
  `price` decimal(10,2) NOT NULL,
  `status` char(20) NOT NULL DEFAULT 'active',
  `video_views` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(200) DEFAULT NULL,
  `scheduled_date` timestamp NULL DEFAULT NULL,
  `schedule` tinyint(1) NOT NULL DEFAULT 0,
  `editing` tinyint(1) NOT NULL DEFAULT 0,
  `can_media_edit` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) NOT NULL,
  `countries_id` char(25) NOT NULL,
  `password` char(60) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `avatar` varchar(70) NOT NULL,
  `cover` varchar(70) NOT NULL,
  `status` varchar(200) NOT NULL DEFAULT 'active',
  `role` enum('normal','admin') NOT NULL DEFAULT 'normal',
  `permission` enum('all','none') NOT NULL DEFAULT 'none',
  `remember_token` varchar(100) NOT NULL,
  `token` varchar(80) NOT NULL,
  `confirmation_code` varchar(125) NOT NULL,
  `paypal_account` varchar(200) NOT NULL,
  `payment_gateway` varchar(50) NOT NULL,
  `bank` text NOT NULL,
  `featured` enum('yes','no') NOT NULL DEFAULT 'no',
  `featured_date` timestamp NULL DEFAULT NULL,
  `about` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `story` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profession` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `oauth_uid` varchar(255) NOT NULL,
  `oauth_provider` varchar(255) NOT NULL,
  `categories_id` varchar(255) NOT NULL,
  `website` varchar(200) NOT NULL,
  `stripe_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `pm_type` varchar(255) DEFAULT NULL,
  `pm_last_four` varchar(4) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `verified_id` enum('yes','no','reject') DEFAULT 'no',
  `address` varchar(200) NOT NULL,
  `city` varchar(150) NOT NULL,
  `zip` varchar(50) NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  `instagram` varchar(200) NOT NULL,
  `youtube` varchar(200) NOT NULL,
  `pinterest` varchar(200) NOT NULL,
  `github` varchar(200) NOT NULL,
  `last_seen` timestamp NULL DEFAULT NULL,
  `email_new_subscriber` enum('yes','no') NOT NULL DEFAULT 'yes',
  `plan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notify_new_subscriber` enum('yes','no') NOT NULL DEFAULT 'yes',
  `notify_liked_post` enum('yes','no') NOT NULL DEFAULT 'yes',
  `notify_commented_post` enum('yes','no') NOT NULL DEFAULT 'yes',
  `company` varchar(50) NOT NULL,
  `post_locked` enum('yes','no') NOT NULL DEFAULT 'yes',
  `ip` varchar(40) NOT NULL,
  `dark_mode` enum('on','off') NOT NULL DEFAULT 'off',
  `gender` varchar(50) NOT NULL,
  `birthdate` varchar(30) NOT NULL,
  `allow_download_files` enum('no','yes') NOT NULL DEFAULT 'no',
  `language` varchar(10) NOT NULL,
  `free_subscription` enum('yes','no') NOT NULL DEFAULT 'no',
  `wallet` decimal(10,2) NOT NULL,
  `tiktok` varchar(200) NOT NULL,
  `snapchat` varchar(200) NOT NULL,
  `paystack_plan` varchar(100) NOT NULL,
  `paystack_authorization_code` varchar(100) NOT NULL,
  `paystack_last4` int(10) UNSIGNED NOT NULL,
  `paystack_exp` varchar(50) NOT NULL,
  `paystack_card_brand` varchar(25) NOT NULL,
  `notify_new_tip` enum('yes','no') NOT NULL DEFAULT 'yes',
  `hide_profile` enum('yes','no') NOT NULL DEFAULT 'no',
  `hide_last_seen` enum('yes','no') NOT NULL DEFAULT 'no',
  `last_login` varchar(250) NOT NULL,
  `hide_count_subscribers` enum('yes','no') NOT NULL DEFAULT 'no',
  `hide_my_country` enum('yes','no') NOT NULL DEFAULT 'no',
  `show_my_birthdate` enum('yes','no') NOT NULL DEFAULT 'no',
  `notify_new_post` enum('yes','no') NOT NULL DEFAULT 'yes',
  `notify_email_new_post` enum('yes','no') NOT NULL DEFAULT 'yes',
  `custom_fee` int(10) UNSIGNED NOT NULL,
  `hide_name` enum('yes','no') NOT NULL DEFAULT 'no',
  `birthdate_changed` enum('yes','no') NOT NULL DEFAULT 'no',
  `email_new_tip` enum('yes','no') NOT NULL DEFAULT 'yes',
  `email_new_ppv` enum('yes','no') NOT NULL DEFAULT 'yes',
  `notify_new_ppv` enum('yes','no') NOT NULL DEFAULT 'yes',
  `active_status_online` enum('yes','no') NOT NULL DEFAULT 'yes',
  `payoneer_account` varchar(200) NOT NULL,
  `zelle_account` varchar(200) NOT NULL,
  `notify_liked_comment` enum('yes','no') NOT NULL DEFAULT 'yes',
  `permissions` text NOT NULL,
  `blocked_countries` text NOT NULL,
  `two_factor_auth` enum('yes','no') NOT NULL DEFAULT 'no',
  `notify_live_streaming` enum('yes','no') NOT NULL DEFAULT 'yes',
  `notify_mentions` enum('yes','no') NOT NULL DEFAULT 'yes',
  `stripe_connect_id` varchar(255) DEFAULT NULL,
  `completed_stripe_onboarding` tinyint(1) NOT NULL DEFAULT 0,
  `device_token` varchar(255) DEFAULT NULL,
  `telegram` varchar(200) NOT NULL,
  `vk` varchar(200) NOT NULL,
  `twitch` varchar(200) NOT NULL,
  `discord` varchar(200) NOT NULL,
  `reddit` varchar(200) NOT NULL,
  `spotify` varchar(200) NOT NULL,
  `posts_privacy` tinyint(1) NOT NULL DEFAULT 1,
  `document_id` varchar(100) NOT NULL,
  `crypto_wallet` varchar(255) NOT NULL,
  `threads` varchar(200) NOT NULL,
  `allow_live_streaming_private` enum('on','off') NOT NULL DEFAULT 'off',
  `price_live_streaming_private` decimal(10,2) DEFAULT NULL,
  `allow_dm` tinyint(1) NOT NULL DEFAULT 1,
  `welcome_message_new_subs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_welcome_message` tinyint(1) NOT NULL DEFAULT 0,
  `price_welcome_message` decimal(10,2) DEFAULT NULL,
  `alias_mp` varchar(100) NOT NULL,
  `cvu` varchar(100) NOT NULL,
  `kick` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `countries_id`, `password`, `email`, `date`, `avatar`, `cover`, `status`, `role`, `permission`, `remember_token`, `token`, `confirmation_code`, `paypal_account`, `payment_gateway`, `bank`, `featured`, `featured_date`, `about`, `story`, `profession`, `oauth_uid`, `oauth_provider`, `categories_id`, `website`, `stripe_id`, `pm_type`, `pm_last_four`, `trial_ends_at`, `price`, `balance`, `verified_id`, `address`, `city`, `zip`, `facebook`, `twitter`, `instagram`, `youtube`, `pinterest`, `github`, `last_seen`, `email_new_subscriber`, `plan`, `notify_new_subscriber`, `notify_liked_post`, `notify_commented_post`, `company`, `post_locked`, `ip`, `dark_mode`, `gender`, `birthdate`, `allow_download_files`, `language`, `free_subscription`, `wallet`, `tiktok`, `snapchat`, `paystack_plan`, `paystack_authorization_code`, `paystack_last4`, `paystack_exp`, `paystack_card_brand`, `notify_new_tip`, `hide_profile`, `hide_last_seen`, `last_login`, `hide_count_subscribers`, `hide_my_country`, `show_my_birthdate`, `notify_new_post`, `notify_email_new_post`, `custom_fee`, `hide_name`, `birthdate_changed`, `email_new_tip`, `email_new_ppv`, `notify_new_ppv`, `active_status_online`, `payoneer_account`, `zelle_account`, `notify_liked_comment`, `permissions`, `blocked_countries`, `two_factor_auth`, `notify_live_streaming`, `notify_mentions`, `stripe_connect_id`, `completed_stripe_onboarding`, `device_token`, `telegram`, `vk`, `twitch`, `discord`, `reddit`, `spotify`, `posts_privacy`, `document_id`, `crypto_wallet`, `threads`, `allow_live_streaming_private`, `price_live_streaming_private`, `allow_dm`, `welcome_message_new_subs`, `send_welcome_message`, `price_welcome_message`, `alias_mp`, `cvu`, `kick`) VALUES
(1, 'Noman', 'admin', '1', '$2y$10$U3BsZ5Xx/MpiZLl2N54t8OP0h1EdWOQEDuzO/tAVwKM4AF/nAn9Tu', 'admin@example.com', '2025-04-08 09:00:06', 'admin-11751130103rlpbu9teq4.jpg', '', 'active', 'admin', 'all', 'ylBqYK9vJEUr7HyLY2WuOkRKbyNyplYKmITCVQfe4Wg5zZUaOylxMmjjTxGC', 'Wy4VkAl2dxHb9WHoXjTowSGPXFPnEQHca6RBe2yeqqmRafs0hSbCEobhNkZZAbCDIru60ceLzAAOI3fj', '', '', 'Bank', 'A/C Number\r\nA/C Holder Name\r\nBank Name\r\nBranch', 'yes', '2019-02-21 03:25:00', '', 'Welcome to my page. If you like my content, please consider support. Any donation will be well received. Thank you for your support!', '', '', '', '16', '', NULL, NULL, NULL, NULL, 0.00, 28.50, 'yes', '', '', '', '', '', '', '', '', '', '2025-07-04 15:44:54', 'yes', 'user_1', 'yes', 'yes', 'yes', '', 'yes', '', 'off', 'male', '02/06/1990', 'no', '', 'no', 34.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', 'full_access', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'on', 1.00, 1, '', 0, 0.00, '', '', ''),
(25, 'Ekla Arif', 'ekla25', '20', '$2y$10$2WrqCLQKQyX20EZya3NFV.P2E0Y4dPdcyJhg9yPasoGzXqVWe3vla', 'adibajannat2743@gmail.com', '2025-06-04 01:20:43', 'ekla25-251748986299gp21hyyuzu.jpg', 'ekla25-251748986434jk66qrnk9l.jpg', 'active', 'admin', 'none', '', 'PuyWJqP0VuS3w1VR7tZRm3ThpFOndvTrKosumsP2NUyDgvJY8YzVQVE8drGYmD1c5ES5tdzYnMb', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'yes', 'Bamunpara  jamalpur sadar', 'Jamalpur', '', '', '', '', '', '', '', '2025-06-18 01:46:07', 'yes', 'user_25', 'yes', 'yes', 'yes', '01752353182', 'yes', '37.111.212.27', 'off', 'male', '09/20/1998', 'no', '', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', 'limited_access', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', 1.00, 1, '', 0, NULL, '', '', ''),
(26, 'noman', 'noman26', '20', '$2y$10$af2zA8WG3eK5j.Ll451CBe339KyLCfCMmjfQ1oIy2CljO7jg.ePK6', 'noman@noman.com', '2025-06-04 02:18:29', 'noman26-261751129892fh5rgqv0q6.png', '', 'active', 'normal', 'none', '', 'ZTKYF2EuVU2q8nbyywrwBA3huNeQJGBDi2fKHsOmPMoPqVpgWkbOH3q5zSnKoZoKA0L2XZi4GCB', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'yes', '', 'Sahibzada Ajit Singh Nagar', '', '', '', '', '', '', '', '2025-07-17 04:07:33', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '37.111.212.120', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', 1.00, 1, '', 0, NULL, '', '', ''),
(27, 'Nisha Islam', 'nisha27', '20', '$2y$10$mkAJF7xnEdh/quV4/xwlJOpzYdoB6yORCoNQf/iPRkXcgNw.1hZOS', 'eklaariful@gmail.com', '2025-06-04 04:26:01', 'default.jpg', '', 'active', 'normal', 'none', '', 'LkQA9olCkQLc1p7Mws2RKtK7ijASvdRTThX21GfnA4wxRug2w12KUI1AmnMzqZ7TIhHaOFzE0Kk', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '17,5', '', NULL, NULL, NULL, NULL, 200.00, 200.00, 'yes', 'Vill: Bamunpara', 'Jamalpur', '2000', '', '', '', '', '', '', '2025-06-13 17:49:48', 'yes', 'user_27', 'yes', 'yes', 'yes', '01928057952', 'yes', '37.111.212.27', 'off', 'female', '12/02/1995', 'no', '', 'no', 780.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', 1.00, 1, '', 0, NULL, '', '', ''),
(28, 'Md. Hannan', 'md28', '20', '$2y$10$NqCx5It36vtZQCxAthajdO2GOofRLuOJofQZXwDpKYDusBKvAGJcy', 'mdhannan4880@gmail.com', '2025-06-04 11:14:47', 'default.jpg', '', 'active', 'normal', 'none', '', 'M1ZvpMIxFTHf31wDKXe4AWjUkSBd16hiO0CDntctgGDWElQStT6nkWbiFxfBlVve9m0qIHWQthC', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '5', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'yes', 'Bamunpara', 'Jamalpur', '2000', '', '', '', '', '', '', '2025-06-16 17:17:51', 'yes', 'user_28', 'yes', 'yes', 'yes', '01300854880', 'yes', '37.111.212.131', 'off', 'male', '07/13/1982', 'no', '', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', 1.00, 1, '', 0, NULL, '', '', ''),
(29, 'Rashed', 'rashed29', '20', '$2y$10$cgiwwttT51InwgccqcteGOqufzLpH23.71wiZVPYeC3TZixl3/JO2', 'rashaduzzaman93@gmail.com', '2025-06-04 11:32:26', 'default.jpg', '', 'active', 'normal', 'none', '', '6WAfL18YshehC428CgghS2PpGyqPNeJVngy3bMoTDGQwJC8S7haA42CWh2E8DjINvJB4gdyxmVy', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'yes', 'Jamalpur', 'Dhaka', '2000', '', '', '', '', '', '', '2025-06-04 11:34:38', 'yes', 'user_29', 'yes', 'yes', 'yes', '01776210271', 'yes', '59.152.5.241', 'off', 'male', '02/06/1997', 'no', '', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', 1.00, 1, '', 0, NULL, '', '', ''),
(30, 'MD. JAHIDUL ISLAM', 'Jahidul97', '20', '$2y$10$L8wpmMgRHvTUW.2GAMleI.AiwPq4D/6lmnfC5qssz7tonB5PKxpxG', 'jahidulislam01926221222@gmail.com', '2025-06-04 11:36:32', 'jahidul97-301749022776yhr7wqys7u.jpg', 'jahidul97-3017490236204xbkthwipk.jpg', 'active', 'normal', 'none', '', '6Lf3JwvKXIeZGSYzzMnzKKktqM5M0bPaxstHXs5e45xSjLkDtBr4dStROIb2JAtDGQWDdLC2KSE', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '5,14', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'yes', 'Bangladesh,Dhaka, Jamalpur', 'Jamalpur', '2000', '', '', '', '', '', '', '2025-06-05 15:46:19', 'yes', 'user_30', 'yes', 'yes', 'yes', '01926221222', 'yes', '114.130.184.122', 'off', 'male', '05/03/1997', 'no', '', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', 1.00, 1, '', 0, NULL, '', '', ''),
(31, 'Rasel mia', 'rasel31', '20', '$2y$10$3MGGbGFeedfADWLBP1GZN.LYD337ra7SiueH96AKI0/8W1x6qM8gq', 'arfinrasel5554@gmail.com', '2025-06-04 11:41:21', 'default.jpg', '', 'active', 'normal', 'none', '', 'cwxS47HWPbnBtkuvKG7nw1saEtSw0Nb8axoIGglWb7jlkVoITDCZYpaGCBuQiwmuxApXLh5YEBw', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '5', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'yes', 'Jamalpur sodorai', 'Jamalpur', '2000', '', '', '', '', '', '', '2025-06-04 11:48:07', 'yes', 'user_31', 'yes', 'yes', 'yes', '01706668060', 'yes', '103.79.179.7', 'off', 'male', '04/28/1997', 'no', '', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', 1.00, 1, '', 0, NULL, '', '', ''),
(32, 'Azad khan', 'azad32', '20', '$2y$10$/Jd7/xupU7OIhzRv0N1OiuS0rJ.s9qoMArjkIYtICL0FhrBfp3kyq', 'www.azadkhan580@gmail.com', '2025-06-04 19:20:28', 'default.jpg', '', 'active', 'normal', 'none', '', 'LJkjWjiU5Qx9EuS9AJm0JBP2daVjzN8lcfezvVo2Y4NkMUpHzCwCU6kkrEA5gszXU7jJZ3xQIDO', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'yes', '', '', '', '', '', '', '', '', '', '2025-06-07 14:30:16', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '37.111.212.105', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', 1.00, 1, '', 0, NULL, '', '', ''),
(33, 'Shafiq', 'shafiq33', '131', '$2y$10$aCAT1..9gt8SYyH9j.yoKOO256P4AV.eyad.TomTdnIw5bCxhSZLO', 'shafiq88rrrr@gmail.com', '2025-06-04 21:50:51', 'default.jpg', '', 'active', 'normal', 'none', '', '84tr4wnKelRarQOPgp41SvOjhrvXo5bWt7RezO5DOsqF78nobl984cwfnIORZKSjaEevq3Z2wNt', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'yes', '', '', '', '', '', '', '', '', '', '2025-06-04 21:51:34', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '219.92.196.71', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', 1.00, 1, '', 0, NULL, '', '', ''),
(34, 'Zahid Hasan', 'zahid34', '20', '$2y$10$s/5UxPiOACogQYyVjDgtu.Dg8I553DSil91IG6MB786QkPBPyslsG', 'zahidhasantopu@gmail.com', '2025-06-05 13:18:37', 'default.jpg', '', 'active', 'normal', 'none', '', 'whUeLlG1vIOQF5ig9x7LgLjnyaYFfVP3c3ReBKM0WYIYb00CJim3PjthieYR9uq9IAFKJu8jBIC', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-06-05 13:20:45', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '37.111.243.158', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', 1.00, 1, '', 0, NULL, '', '', ''),
(35, 'Sabbir Hossen', 'sabbir35', '20', '$2y$10$NwpcAyiqgLrX1uWqIk3zB.ECSl5HMajpSBCyCzHompofC0UoD1Qmm', 'sabbirislam456789@gmail.com', '2025-06-05 15:10:58', 'sabbir35-351749122073vp0voq5qcc.jpg', 'sabbir35-3517491221100kwotv3qap.jpg', 'active', 'normal', 'none', '', 'zcURKFDItY1q7PXvxAlpXp9ubgOsXgLelMKXgZhMLY4nT1gPAFkLoCF5XucRoVOD6sto2wn1MpA', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', 'Kendhuya Jamalpur', 'Jamalpur', '2000', '', '', '', '', '', '', '2025-06-05 15:15:40', 'yes', 'user_35', 'yes', 'yes', 'yes', '01790436614', 'yes', '37.111.212.118', 'off', 'male', '06/05/2007', 'no', '', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', 1.00, 1, '', 0, NULL, '', '', ''),
(36, 'Abdul Kader Mafique', 'abdul36', '20', '$2y$10$/513JYFMp9WcfvdYkHwt0.cEto8PBayTFDBhb5BWRtkGP1AIJUZbK', 'abdulkadermafique@gmail.com', '2025-06-05 22:50:52', 'default.jpg', '', 'active', 'normal', 'none', '', 'n2ocuPVFobseuk9DkTqntafKZdskWQPWQjthXkld4NnlzmQQta5NQn32c6hz7vXtvSrEqBgZeUd', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', 'Pathaliya', 'Jamalpur', '200', '', '', '', '', '', '', '2025-06-05 23:36:01', 'yes', 'user_36', 'yes', 'yes', 'yes', '01712900030', 'yes', '37.111.210.146', 'off', 'male', '07/07/1973', 'no', '', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', 1.00, 1, '', 0, NULL, '', '', ''),
(37, 'Shahanaj', 'shahanaj37', '20', '$2y$10$OZg7sdyxMA8.o0reWobffOYwxa7.F1ZVsbpEX86fxC6Uye59gxIDm', 'nipa@nipa.com', '2025-06-06 03:18:00', 'default.jpg', '', 'active', 'normal', 'none', '', 'IUsrhvjKnASKZoPrAbXsbhbeNoKuNR71Ekq3DGHRTcYs4s5DRxS3PDH3mxqzCxchQNU9ApdHuB3', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-07-05 21:08:43', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '37.111.218.91', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', 1.00, 1, '', 0, NULL, '', '', ''),
(38, 'Mominul Islam', 'mominul38', '20', '$2y$10$p/xCZXMVy6liWSdHXelnve2XFHZYremTb8B0xRc5a2rZBJOnNyULO', 'bossjamalpur@gmail.com', '2025-06-06 15:22:59', 'default.jpg', '', 'active', 'normal', 'none', '', 'YIOFcniJOsUX1rGubZ9WIeXChMXJ09YP6exuAEdFsMPcFJd30tYwCquQp2PnNE73izEd6PqP3mc', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', 'Jugirgupa', 'Jamalpur', '2000', '', '', '', '', '', '', '2025-06-07 20:26:13', 'yes', 'user_38', 'yes', 'yes', 'yes', '01934646265', 'yes', '37.111.206.3', 'off', 'male', '05/28/1992', 'no', '', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', 1.00, 1, '', 0, NULL, '', '', ''),
(39, 'Md Joni', 'md39', '20', '$2y$10$v3r7P2.z7Sz8wO3vN2MxyeO0TBY8B1MLK04FzeieF2F1eGlGsN2vu', 'sakawatxony544@gmail.com', '2025-06-07 00:20:26', 'default.jpg', '', 'active', 'normal', 'none', '', 'xxs8NUzYXV1lZQlrkW9zHfWdmKSBq5W5V66HXi9Ugzer6So9UzHiJQNuUTxSdzuTLCAvTn3gvZF', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-06-07 00:21:45', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '37.111.212.100', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', 1.00, 1, '', 0, NULL, '', '', ''),
(40, 'Ab Roshed', 'ab40', '20', '$2y$10$rMczkEQG1anwSCfCUKx2.uijmUN5NzMrYKMYhvYsEtTBk2aYzMJL.', 'abdulrashidshekh65@gmail.com', '2025-06-07 02:36:29', 'ab40-401749249697n7ir9gwp2g.jpg', 'ab40-401749249727wkmn4oypid.jpg', 'active', 'normal', 'none', '', 'iX6Engun4DskpfoJihKJuQ6668hz2Ip8rFgDDlKOtZqH5wrPDuikiuKALqNYDlaINaiYKwTHrkL', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', 'Bamunpara', 'Jamalpur', '2000', '', '', '', '', '', '', '2025-06-16 21:02:19', 'yes', 'user_40', 'yes', 'yes', 'yes', '01672712640', 'yes', '116.204.142.139', 'off', 'male', '06/01/1979', 'no', '', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', 1.00, 1, '', 0, NULL, '', '', ''),
(41, 'Md Golam Rosul', 'md41', '20', '$2y$10$BXHzCYBqDaasacfJBtvNK.hUZFlNnJrp2oMuhdqEcRlQ.TapWfYUS', 'rosulg666@gmail.com', '2025-06-10 11:12:38', 'md41-41174964906525axszzt9l.jpg', 'md41-411749649026n5pcby0i4j.jpg', 'active', 'normal', 'none', '', 'zfyj6JHBwwmr8bV0Gcn1kfSQ1qCxlX3hdQEB3PoHpJSTK6XRtJOISBXLKq3ofycZMFJzUsR0n4B', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', 'Maderjong', 'Jamalpur', '1225', '', '', '', '', '', '', '2025-06-17 13:29:47', 'yes', 'user_41', 'yes', 'yes', 'yes', '01790149887', 'yes', '42.0.7.254', 'off', 'male', '06/05/2004', 'no', '', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', 1.00, 1, '', 0, NULL, '', '', ''),
(42, 'pran', 'pran42', '20', '$2y$10$RizqYUOJmYSoSpCaeFlX5umxPO/L.tE.HHWzxAL8jP.zNhaHvgzxi', 'lmia37589@gmail.com', '2025-06-11 01:38:52', 'default.jpg', '', 'active', 'normal', 'none', '', 'YSgB8spJJkNxBclXYmLs4meUFZQpPd3IPf378V0FsLGCciq4Dv0h4AO44mSshFN1iOLmxmUpxUa', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-06-11 01:39:54', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '103.73.46.229', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', 1.00, 1, '', 0, NULL, '', '', ''),
(43, 'Habibur Rahman', 'habibur43', '20', '$2y$10$Scw7Y/4FKrNlta.TZGlKtOQmTLlKeAMc4fJlpdE9X5n2LDA6EhKbi', 'habibmia365@gmail.com', '2025-06-11 15:31:23', 'habibur43-431749641764rl4rzramuk.jpeg', 'habibur43-431749641821j7o0buck7k.jpeg', 'active', 'normal', 'none', '', 'g2hoM7ewQ3wApWlh6ji2WTUn1kuuXgcT88uiflYJ5NqubuTsV3FKwT0OjAXeG4mauSN3gvE3uLf', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', 'Narundi,jamalpur', 'Jamalpur', '2002', '', '', '', '', '', '', '2025-06-11 15:39:29', 'yes', 'user_43', 'yes', 'yes', 'yes', '01787876294', 'yes', '37.111.221.200', 'off', 'male', '06/15/1998', 'no', '', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', 1.00, 1, '', 0, NULL, '', '', ''),
(44, 'Md shawn', 'md44', '20', '$2y$10$KB5/84hW3lK91FTWOG.9medeR8CG.CTQ5FhfDF4HyfSFgD0ceOxVu', 'kmshawn88@gmail.com', '2025-06-11 15:48:11', 'md44-441749642607rsnhy1xslc.jpg', 'md44-441749642652qwykkag9hm.jpg', 'active', 'normal', 'none', '', 'YPGu30c7kIb7zOZYpRjbURLWB3rTAAcJaAw1ZRaXbZmL8VmRDRAo2gDT3dgmRZx24WYlJuMJ0Gn', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', 'Barguna', 'Barishal', '8700', '', '', '', '', '', '', '2025-06-12 05:06:11', 'yes', 'user_44', 'yes', 'yes', 'yes', '01641905297', 'yes', '58.145.184.233', 'off', 'male', '01/01/1999', 'no', '', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', 1.00, 1, '', 0, NULL, '', '', ''),
(45, 'Anwur', 'anwur45', '20', '$2y$10$u5dUm2.7HgIo4y/RIiF56.vYWWmLVL9WoeMJFlEeRdDFIYJ5HzAG2', 'anwarrajiya3@gmail.com', '2025-06-11 16:05:10', 'default.jpg', '', 'active', 'normal', 'none', '', 'kIIC9vhGQIeq5mY8UEylGMN0EnM2XQoOQZpD6Yx12LxFhCfuNAwsEDSm9QYqRVZRxriuj1nAxoW', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', 'Bilenderara jamalpur sadar', 'Jamal pur', '2000', '', '', '', '', '', '', '2025-06-11 16:08:33', 'yes', 'user_45', 'yes', 'yes', 'yes', '01982535416', 'yes', '37.111.221.189', 'off', 'male', '02/13/1982', 'no', '', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', 1.00, 1, '', 0, NULL, '', '', ''),
(46, 'Md Hasan', 'md46', '20', '$2y$10$.8gJVhDj644dtHyyBM7OZOpXHnXHVb2t9BZF3abWgGd3GzkCDMOsO', 'ha8766881@gmail.com', '2025-06-11 17:35:11', 'md46-4617496492189k9mrxxt9m.jpeg', 'md46-46174964926958zvdb67cj.jpeg', 'active', 'normal', 'none', '', 'Vm8xyIYcum7K0oB1l2s2JDTpQhIFRO5rjEFVxtcXhhwEPgQmwBHQm44JYZa4UJdBOpaVs8IlF7Y', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', 'Lokkhichor Jamalpur sadar', 'Jamalpur', '2100', '', '', '', '', '', '', '2025-06-11 17:41:26', 'yes', 'user_46', 'yes', 'yes', 'yes', '01990750749', 'yes', '37.111.221.94', 'off', 'male', '02/14/1987', 'no', '', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', 1.00, 1, '', 0, NULL, '', '', ''),
(47, 'Akram Hossen', 'akram47', '20', '$2y$10$SYj5C0NSUtfta0ScYG1oC.0BYkaZHajjQi2A0WiDlmQEG.ybIq4lW', 'akramhoseh@gmail.com', '2025-06-12 16:42:24', 'akram47-471749732297j7ldv8bi3u.jpg', 'akram47-471749732336ffv2mioavn.jpg', 'active', 'normal', 'none', '', 'wrNBAWrj8Pw42OPLQE33QJtFmOt8anmwmgu71EWCnTu6I4ZbEA7KAAkeaMUVkWKwa9oLeJ6ACoy', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', 'Bilender para', 'jamalpur', '2000', '', '', '', '', '', '', '2025-06-12 16:45:45', 'yes', 'user_47', 'yes', 'yes', 'yes', '01764146303', 'yes', '37.111.218.91', 'off', 'male', '02/07/1988', 'no', '', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', 1.00, 1, '', 0, NULL, '', '', ''),
(48, 'Muhammad Chand', 'muhammad48', '165', '$2y$10$EO6uYLPPQrMUlQOvZ6XEeuvELlcFPqntVNtRViMHzowEz40XP3RsS', 'contactmrtarar@gmail.com', '2025-06-13 00:45:04', 'default.jpg', '', 'active', 'normal', 'none', '', 'OWNjeSe5qGQboJttcQ43ukIv1l7vg71IJQmADFPm17OZuzySBZhgnWK7boyE6VeztQTRIczHOfh', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-06-13 00:55:31', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '154.81.238.61', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', 1.00, 1, '', 0, NULL, '', '', ''),
(49, 'MD. IFTIAKH CHOWDHURY EMON', 'md7854', '20', '$2y$10$X.6w8yTIZzPFyIOX533Gx.jpttMw1miYqKcRGspIU9Nuz7obIfDom', 'emonmovies0@gmail.com', '2025-06-14 00:57:51', 'default.jpg', '', 'active', 'normal', 'none', '', 'FIYINuz4tIgGba0DwSX0hapqk2RMNF0jyFu3oIzZD9dFGS0cCNssVJzrdTLZB378tHhlJYHW2Jl', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', 'Khupibari, police Lines', 'Jamalpur Sadar', '2000', '', '', '', '', '', '', '2025-06-14 01:14:24', 'yes', 'user_49', 'yes', 'yes', 'yes', '01762150459', 'yes', '103.166.25.247', 'off', 'male', '11/20/1997', 'no', '', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', 1.00, 1, '', 0, NULL, '', '', ''),
(50, 'Sohel Ahmed', 'sohel50', '20', '$2y$10$xviXLe.4HYsrGWZtx05/OuuW1GIr4Lv2QRf6MZi.bYRNCO6LEMOPS', 'sohelahmed3006@gmail.com', '2025-06-15 19:45:25', 'default.jpg', '', 'active', 'admin', 'none', '', '5nm1mcsPc9pMJkNQOn0Jh6R33qjXmcb4DLiZI5PBDNkZGxvfnKV5HR9qwLfoHedcaZVnY1rNApU', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-06-15 19:50:26', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '37.111.206.51', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', 'dashboard,live_streaming,messages,transactions,deposits,members,advertising,referrals,reports,withdrawals,verification_requests,pages', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', 1.00, 1, '', 0, NULL, '', '', ''),
(51, 'sdfsdfsadfg', 'sdfsdfsadfg51', '20', '$2y$10$uAmCzNochb3t/qVncvX2S.aXUZLJgmy3d63CZ/hql7x4cZlxJDhwO', 'hedrickherman@gmail.com', '2025-06-16 22:22:40', 'default.jpg', '', 'active', 'normal', 'none', '', 'Ylr4Q69URkXKYVOLNidphAOWFwkWbxaxoiEhDKQpIrKOJcfLczdfeM5ByTcM40qaVAiu6qMdyxQ', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-06-17 00:13:03', 'yes', 'user_51', 'yes', 'yes', 'yes', '', 'yes', '221.120.101.245', 'off', '', '06/04/2007', 'no', '', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', 1.00, 1, '', 0, NULL, '', '', ''),
(52, 'SHAMIM Asia-GEP', 'shamim52', '20', '$2y$10$toBHISLIyU2drgH/7CJLb.j9R8CdRHfG3aAY3N7kP6PBeP9W8zLsW', 'shamimswebworkshop@gmail.com', '2025-06-16 23:47:48', 'default.jpg', '', 'active', 'normal', 'none', '', '9Onu9btZAUcX4ZMNZ1Lc1zyLzd28QvvFPOt6sJ4aZnvSYeNu5DWtiXZA7xjZETosU8ZQJePJR4m', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-06-16 23:49:45', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '103.58.74.147', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', 1.00, 1, '', 0, NULL, '', '', ''),
(53, 'No', 'no53', '20', '$2y$10$7teXPiGktrHs1mm50OxYI.QD8pjAS/hGRvgoPcdhSNTpB38hAeaR.', 'no@no.com', '2025-07-05 21:59:42', 'default.jpg', '', 'active', 'normal', 'none', '', 'KocjsqHAYiK7MtClBoM2sPXe2aUVCcnSiUTCpGnxoThB2XcXeOjaFrQeGoJCPeNiIN8b3PRSdHk', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-07-06 08:15:04', 'yes', 'user_53', 'yes', 'yes', 'yes', '', 'yes', '2400:c600:3581:8a1d:1:0:47d1:37c8', 'off', 'male', '07/05/2007', 'no', '', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', 1.00, 1, '', 0, NULL, '', '', ''),
(54, 'hello', 'hello54', '20', '$2y$10$HE8EOU5U/fhUeOF9PqyygeX2pKvhCb9fHuA2vvtcGdoijjNju3b.y', 'hello@hello.com', '2025-07-06 17:46:11', 'default.jpg', '', 'active', 'normal', 'none', '', 'E7QJ1rQOabxZtuxZzj0EwybRqdsRzr1EgM1T7dMBXzEWkmHBYqUV44MlUyRxH8H8REIbKWSDqX0', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2025-07-07 11:10:01', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '37.111.206.136', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', 1.00, 1, '', 0, NULL, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_devices`
--

CREATE TABLE `user_devices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `player_id` varchar(255) NOT NULL,
  `device_type` char(5) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `verification_requests`
--

CREATE TABLE `verification_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(150) NOT NULL,
  `zip` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `image_reverse` varchar(100) DEFAULT NULL,
  `image_selfie` varchar(100) DEFAULT NULL,
  `status` enum('pending','approved') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `form_w9` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `verification_requests`
--

INSERT INTO `verification_requests` (`id`, `user_id`, `address`, `city`, `zip`, `image`, `image_reverse`, `image_selfie`, `status`, `created_at`, `form_w9`) VALUES
(1, 25, 'Bamunpara  jamalpur sadar', 'Jamalpur', '', '251748986696gywqkdxmla3aj4qtydjuc9afco85hmve3lgp6hbq.jpg', 'reverse-251748986696ir7ggylcuvz3tlo4iqatetqlt1ui3r38upvmo5jb.jpg', 'selfie-251748986696nfn5bevwbyo9nvr47vssv7evhvj9crou05f5bu89.jpg', 'approved', '2025-06-04 01:38:16', '');

-- --------------------------------------------------------

--
-- Table structure for table `video_views`
--

CREATE TABLE `video_views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `updates_id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` enum('pending','paid') NOT NULL DEFAULT 'pending',
  `amount` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `gateway` varchar(100) NOT NULL,
  `account` text NOT NULL,
  `estimated_payment` timestamp NULL DEFAULT NULL,
  `date_paid` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `txn_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `withdrawals`
--

INSERT INTO `withdrawals` (`id`, `user_id`, `status`, `amount`, `date`, `gateway`, `account`, `estimated_payment`, `date_paid`, `txn_id`) VALUES
(1, 11, 'paid', '50', '2025-05-25 23:37:03', 'Bank', 'United Commercial bank\r\nAcc: 2162112000000358\r\nJamalpur branch', '2025-06-03 23:37:03', '2025-05-25 23:37:28', ''),
(2, 18, 'paid', '76.75', '2025-06-02 19:54:03', 'Bank', 'A/C Number\r\nA/C Holder Name\r\nBank Name\r\nBranch', '2025-06-03 19:54:03', '2025-06-02 19:55:12', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_settings`
--
ALTER TABLE `admin_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertisings`
--
ALTER TABLE `advertisings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clicks` (`clicks`),
  ADD KEY `impressions` (`impressions`),
  ADD KEY `expired_at` (`expired_at`);

--
-- Indexes for table `ad_click_impressions`
--
ALTER TABLE `ad_click_impressions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `advertisings_id` (`advertisings_id`),
  ADD KEY `type` (`type`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `ad_views`
--
ALTER TABLE `ad_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags` (`tags`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookmarks_user_id_index` (`user_id`),
  ADD KEY `bookmarks_updates_id_index` (`updates_id`);

--
-- Indexes for table `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post` (`updates_id`,`user_id`,`status`);

--
-- Indexes for table `comments_likes`
--
ALTER TABLE `comments_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_likes_user_id_index` (`user_id`),
  ADD KEY `comments_likes_comments_id_index` (`comments_id`),
  ADD KEY `comments_likes_replies_id_index` (`replies_id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_1` (`user_1`,`user_2`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gifts`
--
ALTER TABLE `gifts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usr` (`user_id`,`updates_id`,`status`);

--
-- Indexes for table `live_comments`
--
ALTER TABLE `live_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `live_comments_user_id_index` (`user_id`),
  ADD KEY `live_comments_live_streamings_id_index` (`live_streamings_id`),
  ADD KEY `gift_id` (`gift_id`);

--
-- Indexes for table `live_likes`
--
ALTER TABLE `live_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `live_likes_user_id_index` (`user_id`),
  ADD KEY `live_likes_live_streamings_id_index` (`live_streamings_id`);

--
-- Indexes for table `live_online_users`
--
ALTER TABLE `live_online_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `live_online_users_user_id_index` (`user_id`),
  ADD KEY `live_online_users_live_streamings_id_index` (`live_streamings_id`);

--
-- Indexes for table `live_streamings`
--
ALTER TABLE `live_streamings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `live_streamings_user_id_index` (`user_id`),
  ADD KEY `type` (`type`),
  ADD KEY `buyer_id` (`buyer_id`),
  ADD KEY `minutes` (`minutes`),
  ADD KEY `joined_at` (`joined_at`),
  ADD KEY `token` (`token`),
  ADD KEY `updated_at` (`updated_at`);

--
-- Indexes for table `live_streaming_private_requests`
--
ALTER TABLE `live_streaming_private_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `creator_id` (`creator_id`),
  ADD KEY `minutes` (`minutes`);

--
-- Indexes for table `login_sessions`
--
ALTER TABLE `login_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_updates_id_index` (`updates_id`),
  ADD KEY `media_user_id_index` (`user_id`),
  ADD KEY `media_type_index` (`type`),
  ADD KEY `media_token_index` (`token`),
  ADD KEY `media_encoded_index` (`encoded`),
  ADD KEY `job_id` (`job_id`);

--
-- Indexes for table `media_messages`
--
ALTER TABLE `media_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_messages_messages_id_index` (`messages_id`),
  ADD KEY `media_messages_type_index` (`type`),
  ADD KEY `media_messages_token_index` (`token`),
  ADD KEY `media_messages_encoded_index` (`encoded`),
  ADD KEY `job_id` (`job_id`);

--
-- Indexes for table `media_products`
--
ALTER TABLE `media_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_products_products_id_index` (`products_id`);

--
-- Indexes for table `media_stories`
--
ALTER TABLE `media_stories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_stories_stories_id_index` (`stories_id`),
  ADD KEY `media_stories_name_index` (`name`),
  ADD KEY `media_stories_type_index` (`type`),
  ADD KEY `job_id` (`job_id`);

--
-- Indexes for table `media_welcome_messages`
--
ALTER TABLE `media_welcome_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_welcome_messages_creator_id_index` (`creator_id`),
  ADD KEY `media_welcome_messages_type_index` (`type`),
  ADD KEY `media_welcome_messages_encoded_index` (`encoded`),
  ADD KEY `media_welcome_messages_token_index` (`token`),
  ADD KEY `job_id` (`job_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `remove_from` (`remove_from`),
  ADD KEY `conversation_id` (`conversations_id`),
  ADD KEY `from_user_id` (`from_user_id`),
  ADD KEY `to_user_id` (`to_user_id`),
  ADD KEY `status` (`status`),
  ADD KEY `mode` (`mode`),
  ADD KEY `gift_id` (`gift_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destination` (`destination`),
  ADD KEY `author` (`author`),
  ADD KEY `target` (`target`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_hash` (`token`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_transactions`
--
ALTER TABLE `payment_transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payment_transactions_invoice_number_unique` (`invoice_number`) USING HASH;

--
-- Indexes for table `pay_per_views`
--
ALTER TABLE `pay_per_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pay_per_views_user_id_index` (`user_id`),
  ADD KEY `pay_per_views_updates_id_index` (`updates_id`),
  ADD KEY `pay_per_views_messages_id_index` (`messages_id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plans_name_unique` (`name`),
  ADD KEY `plans_user_id_index` (`user_id`),
  ADD KEY `plans_paystack_index` (`paystack`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_index` (`user_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_transactions_id_index` (`transactions_id`),
  ADD KEY `purchases_user_id_index` (`user_id`),
  ADD KEY `purchases_products_id_index` (`products_id`),
  ADD KEY `expired_at` (`expired_at`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `referrals_user_id_index` (`user_id`),
  ADD KEY `referrals_referred_by_index` (`referred_by`);

--
-- Indexes for table `referral_transactions`
--
ALTER TABLE `referral_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `referral_transactions_referrals_id_index` (`referrals_id`),
  ADD KEY `referral_transactions_user_id_index` (`user_id`),
  ADD KEY `referral_transactions_referred_by_index` (`referred_by`),
  ADD KEY `referral_transactions_transactions_id_index` (`transactions_id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `replies_user_id_index` (`user_id`),
  ADD KEY `replies_updates_id_index` (`updates_id`),
  ADD KEY `replies_comments_id_index` (`comments_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user_id`,`report_id`);

--
-- Indexes for table `reserved`
--
ALTER TABLE `reserved`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`) USING BTREE;

--
-- Indexes for table `restrictions`
--
ALTER TABLE `restrictions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restrictions_user_id_index` (`user_id`),
  ADD KEY `restrictions_user_restricted_index` (`user_restricted`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `shop_categories`
--
ALTER TABLE `shop_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_categories_slug_index` (`slug`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `states_countries_id_index` (`countries_id`),
  ADD KEY `name` (`name`),
  ADD KEY `code` (`code`);

--
-- Indexes for table `stories`
--
ALTER TABLE `stories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stories_user_id_index` (`user_id`),
  ADD KEY `stories_status_index` (`status`);

--
-- Indexes for table `story_backgrounds`
--
ALTER TABLE `story_backgrounds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `story_backgrounds_name_index` (`name`);

--
-- Indexes for table `story_fonts`
--
ALTER TABLE `story_fonts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `story_views`
--
ALTER TABLE `story_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `story_views_user_id_index` (`user_id`),
  ADD KEY `story_views_media_stories_id_index` (`media_stories_id`);

--
-- Indexes for table `stripe_state_tokens`
--
ALTER TABLE `stripe_state_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `last_payment` (`last_payment`(191)),
  ADD KEY `payment_id` (`payment_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `stripe_status` (`stripe_status`),
  ADD KEY `stripe_id` (`stripe_id`),
  ADD KEY `stripe_price` (`stripe_price`),
  ADD KEY `free` (`free`),
  ADD KEY `creator_id` (`creator_id`),
  ADD KEY `rebill_wallet` (`rebill_wallet`),
  ADD KEY `cancelled` (`cancelled`);

--
-- Indexes for table `subscription_deleteds`
--
ALTER TABLE `subscription_deleteds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscription_deleteds_creator_id_index` (`creator_id`),
  ADD KEY `subscription_deleteds_user_id_index` (`user_id`);

--
-- Indexes for table `subscription_items`
--
ALTER TABLE `subscription_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_id` (`subscription_id`);

--
-- Indexes for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `subscriber` (`subscriptions_id`),
  ADD KEY `subscribed` (`subscribed`),
  ADD KEY `earning_net_user` (`earning_net_user`),
  ADD KEY `earning_net_admin` (`earning_net_admin`),
  ADD KEY `created_at` (`created_at`),
  ADD KEY `amount` (`amount`),
  ADD KEY `approved` (`approved`),
  ADD KEY `gift_id` (`gift_id`);

--
-- Indexes for table `two_factor_codes`
--
ALTER TABLE `two_factor_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `updates`
--
ALTER TABLE `updates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token_id` (`token_id`),
  ADD KEY `video_views` (`video_views`),
  ADD KEY `status` (`status`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `can_media_edit` (`can_media_edit`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `role` (`role`),
  ADD KEY `permission` (`permission`),
  ADD KEY `categories_id` (`categories_id`),
  ADD KEY `stripe_id` (`stripe_id`(191)),
  ADD KEY `users_blocked_countries_index` (`blocked_countries`(1024)),
  ADD KEY `username` (`username`),
  ADD KEY `status` (`status`),
  ADD KEY `permissions` (`permissions`(1024)),
  ADD KEY `countries_id` (`countries_id`);

--
-- Indexes for table `user_devices`
--
ALTER TABLE `user_devices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_devices_player_id_unique` (`player_id`);

--
-- Indexes for table `verification_requests`
--
ALTER TABLE `verification_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `video_views`
--
ALTER TABLE `video_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `video_views_user_id_index` (`user_id`),
  ADD KEY `video_views_updates_id_index` (`updates_id`),
  ADD KEY `video_views_ip_index` (`ip`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaings_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_settings`
--
ALTER TABLE `admin_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `advertisings`
--
ALTER TABLE `advertisings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ad_click_impressions`
--
ALTER TABLE `ad_click_impressions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ad_views`
--
ALTER TABLE `ad_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookmarks`
--
ALTER TABLE `bookmarks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `business`
--
ALTER TABLE `business`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comments_likes`
--
ALTER TABLE `comments_likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gifts`
--
ALTER TABLE `gifts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `live_comments`
--
ALTER TABLE `live_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT for table `live_likes`
--
ALTER TABLE `live_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `live_online_users`
--
ALTER TABLE `live_online_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `live_streamings`
--
ALTER TABLE `live_streamings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=658;

--
-- AUTO_INCREMENT for table `live_streaming_private_requests`
--
ALTER TABLE `live_streaming_private_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `login_sessions`
--
ALTER TABLE `login_sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `media_messages`
--
ALTER TABLE `media_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `media_products`
--
ALTER TABLE `media_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media_stories`
--
ALTER TABLE `media_stories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media_welcome_messages`
--
ALTER TABLE `media_welcome_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `payment_transactions`
--
ALTER TABLE `payment_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `pay_per_views`
--
ALTER TABLE `pay_per_views`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referral_transactions`
--
ALTER TABLE `referral_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reserved`
--
ALTER TABLE `reserved`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `restrictions`
--
ALTER TABLE `restrictions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop_categories`
--
ALTER TABLE `shop_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stories`
--
ALTER TABLE `stories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `story_backgrounds`
--
ALTER TABLE `story_backgrounds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `story_fonts`
--
ALTER TABLE `story_fonts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `story_views`
--
ALTER TABLE `story_views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stripe_state_tokens`
--
ALTER TABLE `stripe_state_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_deleteds`
--
ALTER TABLE `subscription_deleteds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_items`
--
ALTER TABLE `subscription_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `two_factor_codes`
--
ALTER TABLE `two_factor_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `updates`
--
ALTER TABLE `updates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `user_devices`
--
ALTER TABLE `user_devices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `verification_requests`
--
ALTER TABLE `verification_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `video_views`
--
ALTER TABLE `video_views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
