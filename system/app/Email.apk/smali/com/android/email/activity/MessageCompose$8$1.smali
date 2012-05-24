.class Lcom/android/email/activity/MessageCompose$8$1;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/MessageCompose$8;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose$8;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$8$1;->this$1:Lcom/android/email/activity/MessageCompose$8;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$8$1;->this$1:Lcom/android/email/activity/MessageCompose$8;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$8;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0, v2}, Lcom/android/email/activity/MessageCompose;->access$1102(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$8$1;->this$1:Lcom/android/email/activity/MessageCompose$8;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$8;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0, v2}, Lcom/android/email/activity/MessageCompose;->access$1202(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$8$1;->this$1:Lcom/android/email/activity/MessageCompose$8;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$8;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0, v2}, Lcom/android/email/activity/MessageCompose;->access$1302(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$8$1;->this$1:Lcom/android/email/activity/MessageCompose$8;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$8;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$1400(Lcom/android/email/activity/MessageCompose;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$8$1;->this$1:Lcom/android/email/activity/MessageCompose$8;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$8;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$1500(Lcom/android/email/activity/MessageCompose;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string v0, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$8$1;->this$1:Lcom/android/email/activity/MessageCompose$8;

    iget-object v1, v1, Lcom/android/email/activity/MessageCompose$8;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$8$1;->this$1:Lcom/android/email/activity/MessageCompose$8;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$8;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMContentExpiryDate:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$8$1;->this$1:Lcom/android/email/activity/MessageCompose$8;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$8;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMLicenseFlag:I

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$8$1;->this$1:Lcom/android/email/activity/MessageCompose$8;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$8;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateId:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$8$1;->this$1:Lcom/android/email/activity/MessageCompose$8;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$8;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMContentOwner:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$8$1;->this$1:Lcom/android/email/activity/MessageCompose$8;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$8;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMOwner:I

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$8$1;->this$1:Lcom/android/email/activity/MessageCompose$8;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$8;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$8$1;->this$1:Lcom/android/email/activity/MessageCompose$8;

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$8;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mIRMTemplateDescription:Ljava/lang/String;

    :cond_0
    return-void
.end method
