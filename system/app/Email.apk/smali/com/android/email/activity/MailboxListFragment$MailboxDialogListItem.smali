.class Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;
.super Ljava/lang/Object;
.source "MailboxListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MailboxDialogListItem"
.end annotation


# instance fields
.field private displayName:Ljava/lang/String;

.field private id:J

.field private isOpened:Z

.field private level:I

.field private mailboxType:I

.field private parentServerId:Ljava/lang/String;

.field private serverId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/email/activity/MailboxListFragment;

.field private unreadCount:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MailboxListFragment;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJ)V
    .locals 1

    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->this$0:Lcom/android/email/activity/MailboxListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->serverId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->parentServerId:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->displayName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->unreadCount:Ljava/lang/String;

    iput p4, p0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->mailboxType:I

    iput-object p6, p0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->parentServerId:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->serverId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->isOpened:Z

    iput p7, p0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->level:I

    iput-wide p8, p0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->id:J

    return-void
.end method

.method static synthetic access$3400(Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->serverId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->id:J

    return-wide v0
.end method

.method public getLevel()I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->level:I

    return v0
.end method

.method public getMailboxDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getMailboxType()I
    .locals 1

    iget v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->mailboxType:I

    return v0
.end method

.method public getMailboxUnreadCount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->unreadCount:Ljava/lang/String;

    return-object v0
.end method

.method public getParentServerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->parentServerId:Ljava/lang/String;

    return-object v0
.end method

.method public getServerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->serverId:Ljava/lang/String;

    return-object v0
.end method

.method public isOpened()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->isOpened:Z

    return v0
.end method

.method public setIsOpened(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/email/activity/MailboxListFragment$MailboxDialogListItem;->isOpened:Z

    return-void
.end method
