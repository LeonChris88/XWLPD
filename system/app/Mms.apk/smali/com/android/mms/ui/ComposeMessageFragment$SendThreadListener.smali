.class public Lcom/android/mms/ui/ComposeMessageFragment$SendThreadListener;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SendThreadListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$SendThreadListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$SendThreadListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2600(Lcom/android/mms/ui/ComposeMessageFragment;Z)V

    return-void
.end method
