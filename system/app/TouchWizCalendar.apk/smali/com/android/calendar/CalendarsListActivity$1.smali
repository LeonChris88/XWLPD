.class Lcom/android/calendar/CalendarsListActivity$1;
.super Ljava/lang/Object;
.source "CalendarsListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/CalendarsListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CalendarsListActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/CalendarsListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/CalendarsListActivity$1;->this$0:Lcom/android/calendar/CalendarsListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/calendar/CalendarsListActivity$1;->this$0:Lcom/android/calendar/CalendarsListActivity;

    invoke-static {v0, p3}, Lcom/android/calendar/CalendarsListActivity;->access$500(Lcom/android/calendar/CalendarsListActivity;I)V

    return-void
.end method
