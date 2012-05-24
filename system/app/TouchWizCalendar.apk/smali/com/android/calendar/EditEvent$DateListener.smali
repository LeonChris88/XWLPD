.class Lcom/android/calendar/EditEvent$DateListener;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EditEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateListener"
.end annotation


# instance fields
.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/calendar/EditEvent;


# direct methods
.method public constructor <init>(Lcom/android/calendar/EditEvent;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/EditEvent$DateListener;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/calendar/EditEvent$DateListener;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 7

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/calendar/EditEvent$DateListener;->this$0:Lcom/android/calendar/EditEvent;

    iget-object v1, p0, Lcom/android/calendar/EditEvent$DateListener;->mView:Landroid/view/View;

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/android/calendar/EditEvent;->access$1400(Lcom/android/calendar/EditEvent;Landroid/view/View;IIIZZ)V

    return-void
.end method
