.class Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeItem;
.super Ljava/lang/Object;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecipientRangeItem"
.end annotation


# instance fields
.field private mRange:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeItem;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeItem;->mRange:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getRecipientRange()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$RecipientRangeItem;->mRange:Ljava/lang/String;

    return-object v0
.end method
