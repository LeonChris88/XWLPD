.class public Lcom/android/email/activity/MessageView;
.super Lcom/android/email/activity/MessageViewBase;
.source "MessageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/email/activity/MessageOrderManager$Callback;
.implements Lcom/android/email/activity/MessageViewFragment$Callback;
.implements Lcom/android/email/activity/MoveMessageToDialog$Callback;


# static fields
.field public static isSms:Z


# instance fields
.field private mFragment:Lcom/android/email/activity/MessageViewFragment;

.field private mMailboxId:J

.field private mMessageCheckerTask:Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

.field private mMessageId:J

.field private mOrderManager:Lcom/android/email/activity/MessageOrderManager;

.field private mReplyAndForwardEnabled:Z

.field mailBoxCursor:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/MessageView;->isSms:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/email/activity/MessageViewBase;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mailBoxCursor:Landroid/database/Cursor;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageCheckerTask:Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

    return-void
.end method

.method public static actionView(Landroid/content/Context;JJ)V
    .locals 1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageView;->getActionViewIntent(Landroid/content/Context;JJ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private enableForwardReply(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/MessageView;->mReplyAndForwardEnabled:Z

    return-void
.end method

.method public static getActionViewIntent(Landroid/content/Context;JJ)Landroid/content/Intent;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MessageView invalid messageId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/MessageView;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.android.email.MessageView_message_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "com.android.email.MessageView_mailbox_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-object v0
.end method

.method private initFromIntent()V
    .locals 9

    const-wide/16 v4, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.android.email.MessageView_message_id"

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    const-string v2, "com.android.email.MessageView_mailbox_id"

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.email"

    const-string v3, "com.android.email.activity.Welcome"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "Z7App"

    const-string v3, "111111mMessageId : %d"

    new-array v4, v8, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "Z7App"

    const-string v3, "111111mMailboxId : %d"

    new-array v4, v8, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "vnd.android.cursor.item/email"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "MESSAGE_ID"

    iget-wide v3, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "com.android.email.LogProvider"

    const-string v3, "com.android.email.LogProvider"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.android.email.MessageView_message_id"

    iget-wide v3, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "com.android.email.MessageView_mailbox_id"

    iget-wide v3, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageView;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private messageChanged()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/email/activity/MessageViewFragment;->openMessage(J)V

    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MessageView;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    iget-wide v2, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/email/activity/MessageOrderManager;->moveTo(J)V
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Z7App"

    const-string v2, "can not open email when MessageId is -1"

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private moveToOlder()Z
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->moveToOlder()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->getCurrentMessageId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->messageChanged()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getAccountId()J
    .locals 2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragment;->getAccountId()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getFragment()Lcom/android/email/activity/MessageViewFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mFragment:Lcom/android/email/activity/MessageViewFragment;

    return-object v0
.end method

.method protected bridge synthetic getFragment()Lcom/android/email/activity/MessageViewFragmentBase;
    .locals 1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v0

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f040081

    return v0
.end method

.method handleMenuItem(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public moveToNewerView()V
    .locals 0

    return-void
.end method

.method public moveToOlderView()V
    .locals 0

    return-void
.end method

.method public onBeforeMessageDelete()V
    .locals 0

    return-void
.end method

.method public onCalendarLinkClicked(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/email/activity/ActivityHelper;->openCalendar(Landroid/app/Activity;J)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onCompose()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getAccountId()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;J)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f1001c5

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragment;

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mFragment:Lcom/android/email/activity/MessageViewFragment;

    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/MessageViewFragment;->setCallback(Lcom/android/email/activity/MessageViewFragment$Callback;)V

    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->initFromIntent()V

    if-eqz p1, :cond_0

    const-string v0, "messageId"

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const v3, 0x7f1002f9

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewBase;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0023

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f1002d5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mailBoxCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mailBoxCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iput-object v1, p0, Lcom/android/email/activity/MessageView;->mailBoxCursor:Landroid/database/Cursor;

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageCheckerTask:Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mMessageCheckerTask:Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageView;->mMessageCheckerTask:Lcom/android/email/activity/MessageListXL$MessageCheckerTask;

    :cond_1
    invoke-super {p0}, Lcom/android/email/activity/MessageViewBase;->onDestroy()V

    return-void
.end method

.method public onForward()V
    .locals 2

    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->actionForward(Landroid/content/Context;J)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    return-void
.end method

.method public onMessageNotFound()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    return-void
.end method

.method public onMessageSetUnread()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    return-void
.end method

.method public onMessageViewShown(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewBase;->onMessageViewShown(I)V

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageView;->enableForwardReply(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMessagesChanged()V
    .locals 0

    return-void
.end method

.method public onMoveConversationAlwaysToMailboxSelected(JJ[J[Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onMoveMessage()V
    .locals 7

    const/4 v4, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    aput-wide v2, v0, v1

    invoke-static {p0, v0, v4}, Lcom/android/email/activity/MoveMessageToDialog;->newInstance(Landroid/app/Activity;[JLandroid/app/Fragment;)Lcom/android/email/activity/MoveMessageToDialog;

    move-result-object v6

    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mailBoxCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/activity/MailboxesAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v3, "type<64 AND flagVisible=1 AND type NOT IN (3,4,5,8)"

    const-string v5, "CASE type WHEN 0 THEN 0 WHEN 3 THEN 1 WHEN 4 THEN 2 WHEN 5 THEN 3 WHEN 6 THEN 4 WHEN 7 THEN 5 ELSE 10 END ,displayName"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mailBoxCursor:Landroid/database/Cursor;

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mailBoxCursor:Landroid/database/Cursor;

    invoke-virtual {v6, v0}, Lcom/android/email/activity/MoveMessageToDialog;->setMailboxCursor(Landroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "dialog"

    invoke-virtual {v6, v0, v1}, Lcom/android/email/activity/MoveMessageToDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public onMoveToMailboxSelected(JJ[JI)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/android/email/activity/ActivityHelper;->moveMessages(Landroid/app/Activity;JJ[J)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageView;->handleMenuItem(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessageViewFragment;->getFromSocialHubState()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_1
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getAccountId()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/android/email/activity/setup/AccountSettingsXL;->actionSettings(Landroid/app/Activity;J)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->onCompose()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->onBackPressed()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_2
        0x7f1002ae -> :sswitch_1
        0x7f1002b4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageView;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/EmailUtility;->getUnreadTotalCount(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/email/BadgeManager;->updateBadgeProvider(Landroid/content/Context;I)V

    invoke-super {p0}, Lcom/android/email/activity/MessageViewBase;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewBase;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onReply()V
    .locals 3

    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->actionReply(Landroid/content/Context;JZ)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    return-void
.end method

.method public onReplyAll()V
    .locals 3

    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->actionReply(Landroid/content/Context;JZ)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    return-void
.end method

.method public onRespondedToInvite(I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->moveToOlder()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/email/activity/MessageViewBase;->onResume()V

    invoke-static {}, Lcom/android/email/Email;->getNotifyUiAccountsChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/android/email/activity/MessageView;->finish()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/email/activity/MessageOrderManager;

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMailboxId:J

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/android/email/activity/MessageOrderManager;-><init>(Landroid/content/Context;JLcom/android/email/activity/MessageOrderManager$Callback;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageView;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-direct {p0}, Lcom/android/email/activity/MessageView;->messageChanged()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/email/activity/MessageViewBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-wide v0, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-string v0, "messageId"

    iget-wide v1, p0, Lcom/android/email/activity/MessageView;->mMessageId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public removeIrmProtection(J)V
    .locals 0

    return-void
.end method
