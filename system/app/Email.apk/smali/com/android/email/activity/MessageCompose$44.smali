.class Lcom/android/email/activity/MessageCompose$44;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->onShowReceiptsOptionsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$44;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$44;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$44;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$11100(Lcom/android/email/activity/MessageCompose;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$4302(Lcom/android/email/activity/MessageCompose;Z)Z

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$44;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$44;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$11200(Lcom/android/email/activity/MessageCompose;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$4402(Lcom/android/email/activity/MessageCompose;Z)Z

    return-void
.end method
