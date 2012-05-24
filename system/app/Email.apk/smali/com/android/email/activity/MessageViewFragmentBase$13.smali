.class Lcom/android/email/activity/MessageViewFragmentBase$13;
.super Ljava/lang/Object;
.source "MessageViewFragmentBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewFragmentBase;->showPopUpOnImage(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;

.field final synthetic val$extra:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$13;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iput-object p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$13;->val$extra:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$13;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/email/activity/MessageViewFragmentBase;->onSaveImage(Z)V

    goto :goto_0

    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$13;->val$extra:Ljava/lang/String;

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$13;->val$extra:Ljava/lang/String;

    invoke-static {v5}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$13;->val$extra:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :goto_1
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$13;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v5, v5, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$13;->val$extra:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    :pswitch_2
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$13;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageViewFragmentBase;->onSetWallpaper()V

    goto :goto_0

    :pswitch_3
    iget-object v5, p0, Lcom/android/email/activity/MessageViewFragmentBase$13;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase$13;->val$extra:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/email/activity/MessageViewFragmentBase;->onCopyImage(Ljava/lang/String;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
