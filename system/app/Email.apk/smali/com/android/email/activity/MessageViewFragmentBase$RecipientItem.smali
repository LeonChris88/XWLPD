.class Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;
.super Ljava/lang/Object;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecipientItem"
.end annotation


# instance fields
.field private checked:Z

.field private rpAddress:Ljava/lang/String;

.field private rpPersonal:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->rpPersonal:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->rpAddress:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->checked:Z

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->rpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonal()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->rpPersonal:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->checked:Z

    return v0
.end method

.method public setChecked()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->checked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientItem;->checked:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
