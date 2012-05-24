.class public Lcom/android/email/combined/CombinedEmailManager;
.super Ljava/lang/Object;
.source "CombinedEmailManager.java"


# static fields
.field private static mInstance:Lcom/android/email/combined/CombinedEmailManager;


# instance fields
.field private mAccountFacade:Lcom/android/email/combined/AccountFacade;

.field private mContext:Landroid/content/Context;

.field private mMessageFacade:Lcom/android/email/combined/MessageFacade;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/combined/CombinedEmailManager;->mInstance:Lcom/android/email/combined/CombinedEmailManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/email/combined/CombinedEmailManager;->mMessageFacade:Lcom/android/email/combined/MessageFacade;

    iput-object v0, p0, Lcom/android/email/combined/CombinedEmailManager;->mAccountFacade:Lcom/android/email/combined/AccountFacade;

    iput-object p1, p0, Lcom/android/email/combined/CombinedEmailManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/email/combined/CombinedEmailManager;
    .locals 2

    sget-object v0, Lcom/android/email/combined/CombinedEmailManager;->mInstance:Lcom/android/email/combined/CombinedEmailManager;

    if-nez v0, :cond_0

    const-class v1, Lcom/android/email/combined/CombinedEmailManager;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/android/email/combined/CombinedEmailManager;

    invoke-direct {v0, p0}, Lcom/android/email/combined/CombinedEmailManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/email/combined/CombinedEmailManager;->mInstance:Lcom/android/email/combined/CombinedEmailManager;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    sget-object v0, Lcom/android/email/combined/CombinedEmailManager;->mInstance:Lcom/android/email/combined/CombinedEmailManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getAccountFacade()Lcom/android/email/combined/AccountFacade;
    .locals 2

    iget-object v0, p0, Lcom/android/email/combined/CombinedEmailManager;->mAccountFacade:Lcom/android/email/combined/AccountFacade;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/email/combined/AccountFacade;

    iget-object v1, p0, Lcom/android/email/combined/CombinedEmailManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/email/combined/AccountFacade;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/combined/CombinedEmailManager;->mAccountFacade:Lcom/android/email/combined/AccountFacade;

    :cond_0
    iget-object v0, p0, Lcom/android/email/combined/CombinedEmailManager;->mAccountFacade:Lcom/android/email/combined/AccountFacade;

    return-object v0
.end method

.method public getMessageFacade()Lcom/android/email/combined/MessageFacade;
    .locals 2

    iget-object v0, p0, Lcom/android/email/combined/CombinedEmailManager;->mMessageFacade:Lcom/android/email/combined/MessageFacade;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/email/combined/MessageFacade;

    iget-object v1, p0, Lcom/android/email/combined/CombinedEmailManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/email/combined/MessageFacade;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/combined/CombinedEmailManager;->mMessageFacade:Lcom/android/email/combined/MessageFacade;

    :cond_0
    iget-object v0, p0, Lcom/android/email/combined/CombinedEmailManager;->mMessageFacade:Lcom/android/email/combined/MessageFacade;

    return-object v0
.end method
