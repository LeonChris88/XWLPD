.class Lcom/android/email/activity/MessageViewFragment$6;
.super Ljava/lang/Object;
.source "MessageViewFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewFragment;->onDeleteSmsPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragment$6;->this$0:Lcom/android/email/activity/MessageViewFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$6;->this$0:Lcom/android/email/activity/MessageViewFragment;

    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragment;->access$500(Lcom/android/email/activity/MessageViewFragment;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
