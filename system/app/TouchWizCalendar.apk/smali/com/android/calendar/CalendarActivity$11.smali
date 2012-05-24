.class Lcom/android/calendar/CalendarActivity$11;
.super Ljava/lang/Object;
.source "CalendarActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/CalendarActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CalendarActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/CalendarActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/CalendarActivity$11;->this$0:Lcom/android/calendar/CalendarActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/CalendarActivity$11;->this$0:Lcom/android/calendar/CalendarActivity;

    const/16 v1, 0x101

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarActivity;->removeDialog(I)V

    iget-object v0, p0, Lcom/android/calendar/CalendarActivity$11;->this$0:Lcom/android/calendar/CalendarActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/calendar/CalendarActivity;->access$202(Lcom/android/calendar/CalendarActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method
