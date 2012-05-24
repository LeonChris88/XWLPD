.class final Lcom/android/email/activity/MessageListFragment$EmptyCallback;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Lcom/android/email/activity/MessageListFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmptyCallback"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/email/activity/MessageListFragment$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/email/activity/MessageListFragment$EmptyCallback;

    invoke-direct {v0}, Lcom/android/email/activity/MessageListFragment$EmptyCallback;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageListFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageListFragment$Callback;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComposeFromMessageListFragment()V
    .locals 0

    return-void
.end method

.method public onConversationMoveAlways([J[Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onEnterSelectionMode(Z)V
    .locals 0

    return-void
.end method

.method public onFollowUpViewShown()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Here"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onForward(J)V
    .locals 0

    return-void
.end method

.method public onMailBoxList()V
    .locals 0

    return-void
.end method

.method public onMailboxNotFound()V
    .locals 0

    return-void
.end method

.method public onMessageOpen(JJJI)V
    .locals 0

    return-void
.end method

.method public onMoveMessages([J)V
    .locals 0

    return-void
.end method

.method public onRefreshFromMessageListFragment()V
    .locals 0

    return-void
.end method

.method public onReply(J)V
    .locals 0

    return-void
.end method

.method public onReplyAll(J)V
    .locals 0

    return-void
.end method

.method public onSearchFromMessageListFragment()V
    .locals 0

    return-void
.end method

.method public refreshAllAccount()V
    .locals 0

    return-void
.end method

.method public setItemCheckboxPressed(ZLcom/android/email/activity/MessageListItem;)V
    .locals 0

    return-void
.end method

.method public setSubItemCheckboxPressed(ZLcom/android/email/activity/MessageListSubTitleItem;)V
    .locals 0

    return-void
.end method

.method public setTimeFormat(Ljava/text/DateFormat;Ljava/text/DateFormat;Ljava/text/DateFormat;)V
    .locals 0

    return-void
.end method
