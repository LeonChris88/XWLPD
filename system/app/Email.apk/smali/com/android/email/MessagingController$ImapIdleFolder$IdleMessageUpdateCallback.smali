.class Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Lcom/android/emailcommon/mail/Folder$IdleMessageUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/MessagingController$ImapIdleFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleMessageUpdateCallback"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/MessagingController$ImapIdleFolder;


# direct methods
.method private constructor <init>(Lcom/android/email/MessagingController$ImapIdleFolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/MessagingController$ImapIdleFolder;Lcom/android/email/MessagingController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;-><init>(Lcom/android/email/MessagingController$ImapIdleFolder;)V

    return-void
.end method


# virtual methods
.method public messageDeleted(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    const-string v1, "Got EXPUNGE, followed by EXISTS"

    invoke-virtual {v0, v1}, Lcom/android/email/MessagingController$ImapIdleFolder;->logIdle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    invoke-static {v0}, Lcom/android/email/MessagingController$ImapIdleFolder;->access$1700(Lcom/android/email/MessagingController$ImapIdleFolder;)Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;

    move-result-object v0

    iget v1, v0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;->mInvokedExpunge:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;->mInvokedExpunge:I

    invoke-virtual {p0}, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;->messageReceived()V

    return-void
.end method

.method public messageFlagChanged(Lcom/android/emailcommon/mail/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    const-string v1, "Got FETCH"

    invoke-virtual {v0, v1}, Lcom/android/email/MessagingController$ImapIdleFolder;->logIdle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget-object v0, v0, Lcom/android/email/MessagingController$ImapIdleFolder;->mFetchFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    invoke-static {v0}, Lcom/android/email/MessagingController$ImapIdleFolder;->access$1700(Lcom/android/email/MessagingController$ImapIdleFolder;)Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;

    move-result-object v0

    iget v1, v0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;->mInvoked:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;->mInvoked:I

    iget-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget-object v0, v0, Lcom/android/email/MessagingController$ImapIdleFolder;->mFetchFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget-object v0, v0, Lcom/android/email/MessagingController$ImapIdleFolder;->this$0:Lcom/android/email/MessagingController;

    iget-object v1, p0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget-object v1, v1, Lcom/android/email/MessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget-object v2, v2, Lcom/android/email/MessagingController$ImapIdleFolder;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-virtual {v0, v1, v2}, Lcom/android/email/MessagingController;->onIdleExists(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    invoke-static {v0}, Lcom/android/email/MessagingController$ImapIdleFolder;->access$1700(Lcom/android/email/MessagingController$ImapIdleFolder;)Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;

    move-result-object v0

    iget v1, v0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;->mSuppressed:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;->mSuppressed:I

    iget-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    const-string v1, "FETCH is ignored since fetch is alr pending"

    invoke-virtual {v0, v1}, Lcom/android/email/MessagingController$ImapIdleFolder;->logIdle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public messageReceived()V
    .locals 3

    iget-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    const-string v1, "Got EXISTS"

    invoke-virtual {v0, v1}, Lcom/android/email/MessagingController$ImapIdleFolder;->logIdle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget-object v0, v0, Lcom/android/email/MessagingController$ImapIdleFolder;->mFetchFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    invoke-static {v0}, Lcom/android/email/MessagingController$ImapIdleFolder;->access$1700(Lcom/android/email/MessagingController$ImapIdleFolder;)Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;

    move-result-object v0

    iget v1, v0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;->mInvoked:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;->mInvoked:I

    iget-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget-object v0, v0, Lcom/android/email/MessagingController$ImapIdleFolder;->mFetchFlag:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget-object v0, v0, Lcom/android/email/MessagingController$ImapIdleFolder;->this$0:Lcom/android/email/MessagingController;

    iget-object v1, p0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget-object v1, v1, Lcom/android/email/MessagingController$ImapIdleFolder;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, p0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    iget-object v2, v2, Lcom/android/email/MessagingController$ImapIdleFolder;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-virtual {v0, v1, v2}, Lcom/android/email/MessagingController;->onIdleExists(Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    invoke-static {v0}, Lcom/android/email/MessagingController$ImapIdleFolder;->access$1700(Lcom/android/email/MessagingController$ImapIdleFolder;)Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;

    move-result-object v0

    iget v1, v0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;->mSuppressed:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleStatistics;->mSuppressed:I

    iget-object v0, p0, Lcom/android/email/MessagingController$ImapIdleFolder$IdleMessageUpdateCallback;->this$1:Lcom/android/email/MessagingController$ImapIdleFolder;

    const-string v1, "EXISTS is ignored since fetch is alr pending"

    invoke-virtual {v0, v1}, Lcom/android/email/MessagingController$ImapIdleFolder;->logIdle(Ljava/lang/String;)V

    goto :goto_0
.end method
