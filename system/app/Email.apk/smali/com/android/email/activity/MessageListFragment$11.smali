.class Lcom/android/email/activity/MessageListFragment$11;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageListFragment;->onFlickDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment$11;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$11;->this$0:Lcom/android/email/activity/MessageListFragment;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$11;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$3600(Lcom/android/email/activity/MessageListFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageListFragment;->access$4800(Lcom/android/email/activity/MessageListFragment;Landroid/content/Context;)V

    return-void
.end method
