.class Lcom/android/email/activity/AccountFolderList$2;
.super Ljava/lang/Object;
.source "AccountFolderList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/AccountFolderList;->createRemoveAccountDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/AccountFolderList;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/email/activity/AccountFolderList;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/AccountFolderList$2;->this$0:Lcom/android/email/activity/AccountFolderList;

    iput-object p2, p0, Lcom/android/email/activity/AccountFolderList$2;->val$activity:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const/4 v7, 0x1

    iget-object v3, p0, Lcom/android/email/activity/AccountFolderList$2;->this$0:Lcom/android/email/activity/AccountFolderList;

    invoke-static {v3}, Lcom/android/email/activity/AccountFolderList;->access$100(Lcom/android/email/activity/AccountFolderList;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v3

    iget-wide v0, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-object v3, p0, Lcom/android/email/activity/AccountFolderList$2;->this$0:Lcom/android/email/activity/AccountFolderList;

    invoke-virtual {v3, v7}, Lcom/android/email/activity/AccountFolderList;->dismissDialog(I)V

    iget-object v3, p0, Lcom/android/email/activity/AccountFolderList$2;->val$activity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/android/email/NotificationController;->cancelNewMessageNotification(J)V

    iget-object v3, p0, Lcom/android/email/activity/AccountFolderList$2;->val$activity:Landroid/app/Activity;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "displayName is not \'##snc##\'"

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/android/email/activity/AccountFolderList$2;->this$0:Lcom/android/email/activity/AccountFolderList;

    invoke-static {v3}, Lcom/android/email/activity/AccountFolderList;->access$200(Lcom/android/email/activity/AccountFolderList;)Lcom/android/email/activity/AccountFolderListFragment;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/AccountFolderList$2;->this$0:Lcom/android/email/activity/AccountFolderList;

    invoke-static {v4}, Lcom/android/email/activity/AccountFolderList;->access$100(Lcom/android/email/activity/AccountFolderList;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/email/activity/AccountFolderListFragment;->hideDeletingAccount(J)V

    iget-object v3, p0, Lcom/android/email/activity/AccountFolderList$2;->val$activity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/android/email/Controller;->deleteAccount(J)V

    if-ne v2, v7, :cond_0

    iget-object v3, p0, Lcom/android/email/activity/AccountFolderList$2;->val$activity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionNewAccount(Landroid/app/Activity;)V

    iget-object v3, p0, Lcom/android/email/activity/AccountFolderList$2;->this$0:Lcom/android/email/activity/AccountFolderList;

    invoke-virtual {v3}, Lcom/android/email/activity/AccountFolderList;->finish()V

    :cond_0
    return-void
.end method
