.class Lcom/android/mms/ui/ManageSimMessages$4;
.super Ljava/lang/Object;
.source "ManageSimMessages.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ManageSimMessages;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ManageSimMessages;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$4;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$4;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/mms/ui/ManageSimMessages;->access$500(Lcom/android/mms/ui/ManageSimMessages;I)V

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$4;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$1200(Lcom/android/mms/ui/ManageSimMessages;)V

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$4;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$1300(Lcom/android/mms/ui/ManageSimMessages;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
