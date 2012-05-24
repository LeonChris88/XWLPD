.class Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;-><init>(Lcom/android/email/activity/MessageViewFragmentBase;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    const/16 v6, 0x8

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v3, v3, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/Preferences;->getDPModeColor()I

    move-result v0

    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPageFinished color = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " url = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseWhiteTheme()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$6400(Lcom/android/email/activity/MessageViewFragmentBase;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$6500(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/ImageButton;

    move-result-object v3

    const v4, 0x7f02025f

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :goto_0
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$6600(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$6700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$6800(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$6900(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/email/activity/bubblelayout/ViewerBubbleLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7000(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$7100(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v3, v0, v7}, Lcom/android/email/activity/MessageViewFragmentBase;->ControlBgColor(IZ)V

    invoke-virtual {v2, v0}, Lcom/android/email/Preferences;->setBGColor(I)V

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3900(Lcom/android/email/activity/MessageViewFragmentBase;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->getSearchString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v3, v3, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageWebView:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v3, v1, v7}, Lcom/android/email/activity/MessageWebView;->showFindDialog(Ljava/lang/String;Z)Z

    :cond_0
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewHandler;->setMessageWebView()V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$6500(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/ImageButton;

    move-result-object v3

    const v4, 0x7f02025e

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$6500(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/ImageButton;

    move-result-object v3

    const v4, 0x7f02025a

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 10

    const/4 v6, 0x1

    if-eqz p2, :cond_2

    const-string v0, "file:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->IsEAS()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v0, v0, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1600(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v7

    iget-object v9, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    if-eqz v9, :cond_0

    const-string v0, "2.5"

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "12."

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1700(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/Controller;

    move-result-object v1

    iget-wide v2, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/activity/ActivityHelper;->clearDocumentsDB(Landroid/content/Context;Lcom/android/email/Controller;J)V

    invoke-virtual {p2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v0, "/"

    const-string v1, "\\"

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1600(Lcom/android/email/activity/MessageViewFragmentBase;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v3}, Lcom/android/email/activity/MessageViewFragmentBase;->access$400(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/EmailDocSearchQuery;->startActivity(Landroid/app/Activity;JJLjava/lang/String;I)V

    :goto_1
    return v6

    :cond_1
    const/4 v8, 0x7

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$CustomWebViewClient;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$2200(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/email/activity/MessageViewFragmentBase$Callback;->onUrlInMessageClicked(Ljava/lang/String;)Z

    move-result v6

    goto :goto_1
.end method
