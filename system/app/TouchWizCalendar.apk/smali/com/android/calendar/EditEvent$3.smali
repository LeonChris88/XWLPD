.class Lcom/android/calendar/EditEvent$3;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EditEvent;->showTimezoneDialog()V
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

    iput-object p1, p0, Lcom/android/calendar/EditEvent$3;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/android/calendar/EditEvent$3;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$1700(Lcom/android/calendar/EditEvent;)Lcom/android/calendar/TimezoneAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/TimezoneAdapter;->getCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/calendar/EditEvent$3;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0, p2}, Lcom/android/calendar/EditEvent;->access$1800(Lcom/android/calendar/EditEvent;I)V

    iget-object v0, p0, Lcom/android/calendar/EditEvent$3;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$1200(Lcom/android/calendar/EditEvent;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/calendar/EditEvent$3;->this$0:Lcom/android/calendar/EditEvent;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/calendar/EditEvent;->access$1902(Lcom/android/calendar/EditEvent;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method
