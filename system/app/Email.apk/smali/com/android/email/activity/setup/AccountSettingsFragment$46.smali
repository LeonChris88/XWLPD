.class Lcom/android/email/activity/setup/AccountSettingsFragment$46;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSettingsFragment;->ringtoneDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

.field final synthetic val$items:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsFragment;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$46;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$46;->val$items:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    const v8, 0x7f080525

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$46;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$46;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    const v6, 0x7f080524

    invoke-virtual {v5, v6}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.sec.android.app.myfiles"

    const-string v5, "com.sec.android.app.myfiles.ExternelAccessActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "com.sec.android.app.myfiles.PICK_DATA "

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "file_display"

    const-string v5, "forwardable"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/Sounds"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "FOLDERPATH"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "CONTENT_TYPE"

    const-string v5, "audio/*"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$46;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    const/16 v5, 0xbda

    invoke-virtual {v4, v3, v5}, Lcom/android/email/activity/setup/AccountSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$46;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$46;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-virtual {v5, v8}, Lcom/android/email/activity/setup/AccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$46;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$46;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v5}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$500(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->getRingtone()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$5102(Lcom/android/email/activity/setup/AccountSettingsFragment;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$46;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$5100(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$46;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$5100(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    if-ne v4, v5, :cond_3

    :cond_2
    const-string v4, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_2
    const-string v4, "android.intent.extra.ringtone.TYPE"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "android.intent.extra.ringtone.TITLE"

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$46;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v5}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$200(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$46;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    const/16 v5, 0xbdb

    invoke-virtual {v4, v3, v5}, Lcom/android/email/activity/setup/AccountSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$46;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$5102(Lcom/android/email/activity/setup/AccountSettingsFragment;Landroid/net/Uri;)Landroid/net/Uri;

    const-string v4, "Email"

    const-string v5, "This is normal Exception! If Silent ringtone, is it null"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$46;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$5100(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "content://settings/system/notification_sound"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v7}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    const-string v4, "AccountSettingsFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RingtoneManager.getDefaultUri(RingtoneManager.TYPE_RINGTONE) = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "content://media/internal/audio/media/40"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v4, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$46;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$5100(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/net/Uri;

    move-result-object v1

    const-string v4, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2
.end method
