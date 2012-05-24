.class Lcom/android/email/activity/MessageCompose$50;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->onImageAttachmentResult(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;

.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$heightLarge:I

.field final synthetic val$heightMedium:I

.field final synthetic val$heightsmall:I

.field final synthetic val$widthLarge:I

.field final synthetic val$widthMedium:I

.field final synthetic val$widthsmall:I


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;IIIIII)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$50;->this$0:Lcom/android/email/activity/MessageCompose;

    iput-object p2, p0, Lcom/android/email/activity/MessageCompose$50;->val$filePath:Ljava/lang/String;

    iput p3, p0, Lcom/android/email/activity/MessageCompose$50;->val$widthLarge:I

    iput p4, p0, Lcom/android/email/activity/MessageCompose$50;->val$heightLarge:I

    iput p5, p0, Lcom/android/email/activity/MessageCompose$50;->val$widthMedium:I

    iput p6, p0, Lcom/android/email/activity/MessageCompose$50;->val$heightMedium:I

    iput p7, p0, Lcom/android/email/activity/MessageCompose$50;->val$widthsmall:I

    iput p8, p0, Lcom/android/email/activity/MessageCompose$50;->val$heightsmall:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$50;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$11900(Lcom/android/email/activity/MessageCompose;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$50;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$50;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v3, v1}, Lcom/android/email/activity/MessageCompose;->access$7000(Lcom/android/email/activity/MessageCompose;Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/activity/MessageCompose;->access$12100(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v2

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$50;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v2, v0}, Lcom/android/email/activity/MessageCompose;->access$6300(Lcom/android/email/activity/MessageCompose;I)V

    :goto_1
    return-void

    :pswitch_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$50;->val$filePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$50;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$50;->val$filePath:Ljava/lang/String;

    iget v4, p0, Lcom/android/email/activity/MessageCompose$50;->val$widthLarge:I

    iget v5, p0, Lcom/android/email/activity/MessageCompose$50;->val$heightLarge:I

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$50;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$11900(Lcom/android/email/activity/MessageCompose;)I

    move-result v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/email/activity/MessageCompose;->access$12000(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;III)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$50;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$50;->val$filePath:Ljava/lang/String;

    iget v4, p0, Lcom/android/email/activity/MessageCompose$50;->val$widthMedium:I

    iget v5, p0, Lcom/android/email/activity/MessageCompose$50;->val$heightMedium:I

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$50;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$11900(Lcom/android/email/activity/MessageCompose;)I

    move-result v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/email/activity/MessageCompose;->access$12000(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;III)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$50;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$50;->val$filePath:Ljava/lang/String;

    iget v4, p0, Lcom/android/email/activity/MessageCompose$50;->val$widthsmall:I

    iget v5, p0, Lcom/android/email/activity/MessageCompose$50;->val$heightsmall:I

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$50;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$11900(Lcom/android/email/activity/MessageCompose;)I

    move-result v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/email/activity/MessageCompose;->access$12000(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;III)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$50;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/android/email/activity/MessageCompose;->access$6300(Lcom/android/email/activity/MessageCompose;I)V

    const-string v2, "Email"

    const-string v3, "onImageAttachmentResult() file = null"

    invoke-static {v2, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
