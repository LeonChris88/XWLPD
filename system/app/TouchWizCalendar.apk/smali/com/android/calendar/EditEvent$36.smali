.class Lcom/android/calendar/EditEvent$36;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EditEvent;->createRepeatCustomizeDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EditEvent;


# direct methods
.method constructor <init>(Lcom/android/calendar/EditEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/EditEvent$36;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/EditEvent$36;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v1, p0, Lcom/android/calendar/EditEvent$36;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v1}, Lcom/android/calendar/EditEvent;->access$4600(Lcom/android/calendar/EditEvent;)Landroid/app/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/calendar/EditEvent;->access$4000(Lcom/android/calendar/EditEvent;Landroid/app/Dialog;)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent$36;->this$0:Lcom/android/calendar/EditEvent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/calendar/EditEvent;->access$4602(Lcom/android/calendar/EditEvent;Landroid/app/Dialog;)Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/calendar/EditEvent$36;->this$0:Lcom/android/calendar/EditEvent;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/android/calendar/EditEvent;->removeDialog(I)V

    return-void
.end method
