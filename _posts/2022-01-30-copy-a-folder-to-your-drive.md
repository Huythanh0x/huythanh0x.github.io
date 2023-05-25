---
title: Copy folders to your Google Drive
categories: [Colab]
tags: [copy-folder, python, shellscript]
---

<div class="relative flex w-[calc(100%-50px)] flex-col gap-1 md:gap-3 lg:w-[calc(100%-115px)]">
    <div class="flex flex-grow flex-col gap-3">
        <div class="flex flex-col items-start gap-4 whitespace-pre-wrap break-words">
            <div class="markdown prose w-full break-words dark:prose-invert light">
                <p>Sometimes you will be shared documents through Google Drive. If the file or folder is in PDF, MP4, or
                    simple data format, you can view it directly there. You can easily create a copy of the file to have
                    full ownership, but for folders, you can only create a shortcut instead of a copy. That's why I
                    created a very simple script to easily create a copy of a folder.</p>
                <h4>Problem and solution</h4>
                <h5>Problem</h5>
                <p>The problem is that I am shared a folder, and I want to create a copy in my own folder. There are
                    some reasons to create a copy on my drive. The first case is if I only store the link or create a
                    shortcut, then if that file is deleted (by Google or the owner), I won't be able to access it. The
                    second case is when the folder is set to public mode, but after a while, the owner will change it to
                    private. In this case, I can only access it when the owner grants permission. And sometimes I
                    download courses to my computer to view gradually. This downloading process takes a lot of time
                    because I have to wait for Google to zip the folder and then split it into multiple parts before the
                    downloading step. This process is time-consuming and consumes computer memory.</p>
                <h5>Solution</h5>
                <p>My initial idea was to use Google Colab. Then the user will create a "shortcut of the shared folder"
                    in their Google Drive. At this point, the user will pass the folder name parameter. When running the
                    script, Google Drive will be mounted into Colab. We can then copy the target folder into the user's
                    Google Drive. But the issue with copying is that only the shortcut created by the user is selected
                    for copying. Then I tried to zip the shortcut, and it was possible to extract the contents from the
                    shortcut. However, this approach is not optimized because it involves creating a zip file and then
                    unzipping it.</p>
                <p>Then my friend suggested a way to copy the contents of the shortcut using a similar method <a
                        href="https://askubuntu.com/questions/86822/how-can-i-copy-the-contents-of-a-folder-to-another-folder-in-a-different-directo"
                        target="_new">as mentioned here</a>. So the optimization issue was resolved. Skipping the zip
                    and unzip steps, a folder of <strong>17GB</strong> only takes <strong>470 seconds</strong>, and for
                    a small file of <strong>125MB</strong>, it only takes <strong>0.94 seconds</strong>.</p>
                <p>But there was another problem where the user had to copy the folder name to paste it into Colab. I
                    found this operation a bit difficult. So instead of copying the name, I replaced it with copying the
                    "link address". From the link address, I extracted the folder name and directly found the path to
                    that folder through the shortcut. Then the script will automatically perform the copy operation as
                    usual.</p>
                <h3>User Guide</h3>
                <p>Just follow 3 steps: create a shortcut, get the link of the folder, and paste it into Colab, then run
                    it. Next, we will go through each step in detail.</p>
                <h5>Step 1: Create a shortcut</h5>
                <p>I will use <a href="https://drive.google.com/drive/folders/1TaDdRfK7JJaOcKqM0pz1NAiqbtZhzwFx"
                        target="_new">this folder</a> as an example.</p>
                <p><img src="https://raw.githubusercontent.com/Huythanh0x/copy_shared_folder_to_my_drive/master/images/example_shared_link.png"
                        alt=""></p>
                <p>You click on the folder name and select "add shortcut to my drive".</p>
                <p><img src="https://raw.githubusercontent.com/Huythanh0x/copy_shared_folder_to_my_drive/master/images/choose_add_shortcut_to_my_drive.png"
                        alt=""></p>
                <p>After the selection window appears, click on the "add shortcut" button.</p>
                <p><img src="https://raw.githubusercontent.com/Huythanh0x/copy_shared_folder_to_my_drive/master/images/click_add_shortcut_button.png"
                        alt=""></p>
                <h5>Step 2: Copy the link</h5>
                <p>Click on the folder name and select "Get link".</p>
                <p><img src="https://raw.githubusercontent.com/Huythanh0x/copy_shared_folder_to_my_drive/master/images/choose_get_link.png"
                        alt=""></p>
                <p>Then click on "Copy".</p>
                <p><img src="https://raw.githubusercontent.com/Huythanh0x/copy_shared_folder_to_my_drive/master/images/choose_copy_link_button.png"
                        alt=""></p>
                <p><strong>OR</strong>
                    You can copy the link from the search bar.</p>
                <p><img src="https://raw.githubusercontent.com/Huythanh0x/copy_shared_folder_to_my_drive/master/images/copy_link_from_search_bar.png"
                        alt=""></p>
                <h5>Step 3: Paste the link into Colab and run it</h5>
                <p>Access <a
                        href="https://colab.research.google.com/drive/1sO_847RoSFD_esX5oF2xxGqqgcwUFTyR#scrollTo=XP7tHbNyZGPa"
                        target="_new">this link</a>
                    Paste your link into the box as shown in the image below</p>
                <p><img src="https://raw.githubusercontent.com/Huythanh0x/copy_shared_folder_to_my_drive/master/images/paste_link.png"
                        alt=""></p>
                <p>Click on "Runtime" and then "Run all"</p>
                <p><img src="https://raw.githubusercontent.com/Huythanh0x/copy_shared_folder_to_my_drive/master/images/click_start.png"
                        alt=""></p>
                <p><code>Drive</code> will request access permission from <code>Colab</code>. You can choose as shown in
                    the images.</p>
                <table>
                    <thead>
                        <tr>
                            <th style="text-align: center;"><img
                                    src="https://raw.githubusercontent.com/Huythanh0x/copy_shared_folder_to_my_drive/master/images/access_to_drive_to_mount.png"
                                    alt=""></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td style="text-align: center;">Acess to drive</td>
                        </tr>
                    </tbody>
                </table>
                <table>
                    <thead>
                        <tr>
                            <th style="text-align: center;"><img
                                    src="https://raw.githubusercontent.com/Huythanh0x/copy_shared_folder_to_my_drive/master/images/choose_account.png"
                                    alt=""></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td style="text-align: center;">Choose your account</td>
                        </tr>
                    </tbody>
                </table>
                <table>
                    <thead>
                        <tr>
                            <th style="text-align: center;"><img
                                    src="https://raw.githubusercontent.com/Huythanh0x/copy_shared_folder_to_my_drive/master/images/allow_access_storage.png"
                                    alt=""></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td style="text-align: center;">Allow accessing to your drive</td>
                        </tr>
                    </tbody>
                </table>
                <p>After receiving the "Finished" notification, you can check in your drive in the <code>COPY</code>
                    folder under <a href="https://drive.google.com/drive/u/0/my-drive" target="_new">my drive</a></p>
                <p><img src="https://raw.githubusercontent.com/Huythanh0x/copy_shared_folder_to_my_drive/master/images/result.png"
                        alt=""></p>
                <h3>Conclusion</h3>
                <p>Those are the steps to copy a shared folder to your personal drive. With the above steps, you have
                    complete ownership of those documents, and if the original copy is deleted, it will not be affected.
                    The only drawback is that your storage space must be large enough, while the "Free" account is only
                    allocated 15GB. However, with a student account or an "edu" type Google account, you will have
                    unlimited storage, making it easy to store documents.</p>
            </div>
        </div>
    </div>
</div>