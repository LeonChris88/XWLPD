.class Lcom/android/mms/ui/MessageOptions$CreationOkListener;
.super Ljava/lang/Object;
.source "MessageOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreationOkListener"
.end annotation


# instance fields
.field private mMessageItem:Lcom/android/mms/ui/MessageItem;

.field private mSendReq:Lcom/google/android/mms/pdu/SendReq;

.field private mSubject:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/MessageOptions;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/SendReq;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iput-object p3, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mSendReq:Lcom/google/android/mms/pdu/SendReq;

    iput-object p4, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mSubject:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->this$0:Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mMessageItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mSendReq:Lcom/google/android/mms/pdu/SendReq;

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions$CreationOkListener;->mSubject:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/MessageOptions;->access$100(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Z)V

    return-void
.end method
