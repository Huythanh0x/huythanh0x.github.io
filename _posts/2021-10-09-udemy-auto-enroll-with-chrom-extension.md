---
title: Chrome extension to automatically enroll 100% sale-off courses
categories: [Extesnion]
tags: [udemy, auto, free]
---
<h3>Udemy is currently the largest online learning platform, with a vast number of courses available. However, most of these courses require payment. With the provided extension, you can join courses for free and fully automate the process.

<h4>Requirements</h4>

There are numerous daily coupons available, but you may not have the time to browse through each course. Therefore, you need a tool that can automatically gather all the courses for you to choose from later.

While there are several tools available for this purpose, they often require complex setup involving programming languages or environments, making programming experience a necessity. There used to be a method using Colab for automation, which was highly useful, but it is no longer usable due to captcha restrictions.

<h4>Solution</h4>

<h5>Tool</h5>

I am using an extension for its ability to perform actions such as clicking, opening new tabs, opening URLs, and managing memory storage. Moreover, it is easy to install without requiring programming experience.

<h5>Algorithm</h5>

The algorithm is relatively simple. I will fetch all the APIs and store the course codes in an array. Then, I will sequentially open the URLs and perform an auto-click on the "enroll" button. The extension provides additional features such as pausing the automation, resuming it, updating real-time progress, and displaying the number of available coupons. Furthermore, I have added some keyboard shortcuts for convenience.

<h4>Installation Guide</h4>

<ol>
  <li>First, access <a href="https://github.com/Huythanh0x/udemy_coupon_chrome_extensions/releases/download/0.1/udemy_coupon_chrome_extensions-default.zip">this link</a> and download the file in zip format.</li>
  <li>Extract the downloaded file using software such as <a href="https://www.win-rar.com/start.html?&L=0">WinRAR</a> or <a href="https://www.7-zip.org/download.html">7-Zip</a>.</li>
  <li>Open Google Chrome using <a href="chrome://extensions/">this link</a> or Edge using <a href="edge://extensions/">this link</a>.</li>
  <li>Enable developer mode and select "Load unpacked" as shown in the image below. Browse to the location where you extracted the downloaded file. After installation, it is recommended to pin the extension for easy access.</li>
</ol>

<h4>Usage Guide</h4>

<p><em>Note: Before using the extension, make sure to log in to your Udemy account.</em></p>

During the automation process, it is advised not to open any other tabs. If you open another tab, the automation will pause or the newly opened tab will continue to open the link for automation.

<h5>Using the User Interface (UI)</h5>

You have two options:
<ol>
  <li>Click on "Show All" to display all available coupons and manually select the courses.</li>
  <li>Click on the "Auto" button to let the system automatically enroll in the first 100 courses.</li>
</ol>
During the automation process, you can use the "Pause" button to temporarily stop the automation or the "Continue" button to resume it.

<h5>Using Keyboard Shortcuts</h5>

The application supports the following shortcuts:
<ul>
  <li><code>Alt+A</code>: Auto enroll in all courses.</li>
  <li><code>Alt+L</code>: Display a list of discounted courses.</li>
  <li><code>Alt+P</code>: Pause the automation.</li>
  <li><code>Alt+C</code>: Continue the automation.</li>
</ul>

<h5>Other Features</h5>

<ul>
  <li>Contact Facebook: Visit my personal Facebook page for further inquiries.</li>
  <li>Github repo: This project is open source and available on GitHub.</li>
  <li>Frequently Asked Questions: Provides answers to common questions and usage instructions.</li>
  <li>Bug Report: Send an email to report any issues encountered during usage.</li>
</ul>

<h4>Known Limitations and Future Directions</h4>

Currently, the extension is functioning quite stably. However, there are a few limitations to be aware of. First, you cannot use the browser during the automation process, except for opening incognito tabs or different profiles. Additionally, the automation process can be time-consuming.

Possible solutions include adding courses to the cart and making a single payment instead of enrolling in each course individually. Another option is to insert course information into cookies, which can improve speed since it operates in the background.

The current extension automatically enrolls in all available courses without applying any filters. This feature will be added in the near future.

<h4>Summary</h4>

The above guide provides instructions for using the extension to automate course enrollment. In my opinion, this extension is suitable for users who want to access a large number of courses or enroll in courses for future selection. However, personally, I prefer manually choosing courses to enroll in rather than automating the process.
