.class Lcom/android/calendar/DayEventListActivity$7;
.super Ljava/lang/Object;
.source "DayEventListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/DayEventListActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DayEventListActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/DayEventListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/DayEventListActivity$7;->this$0:Lcom/android/calendar/DayEventListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/DayEventListActivity$7;->this$0:Lcom/android/calendar/DayEventListActivity;

    const/16 v1, 0x101

    invoke-virtual {v0, v1}, Lcom/android/calendar/DayEventListActivity;->showDialog(I)V

    return-void
.end method
