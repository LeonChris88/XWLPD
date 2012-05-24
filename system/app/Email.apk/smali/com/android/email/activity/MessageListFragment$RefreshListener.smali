.class Lcom/android/email/activity/MessageListFragment$RefreshListener;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Lcom/android/email/RefreshManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListFragment;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment$RefreshListener;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageListFragment;Lcom/android/email/activity/MessageListFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListFragment$RefreshListener;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    return-void
.end method


# virtual methods
.method public onMessagingError(JJLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$RefreshListener;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v0, p3, p4}, Lcom/android/email/activity/MessageListFragment;->access$4400(Lcom/android/email/activity/MessageListFragment;J)V

    return-void
.end method

.method public onRefreshStatusChanged(JJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$RefreshListener;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment;->access$4500(Lcom/android/email/activity/MessageListFragment;)V

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$RefreshListener;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-static {v0, p3, p4}, Lcom/android/email/activity/MessageListFragment;->access$4400(Lcom/android/email/activity/MessageListFragment;J)V

    return-void
.end method
