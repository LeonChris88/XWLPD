.class Lcom/android/calendar/MonthView$4;
.super Ljava/lang/Object;
.source "MonthView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/MonthView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/MonthView;


# direct methods
.method constructor <init>(Lcom/android/calendar/MonthView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/MonthView$4;->this$0:Lcom/android/calendar/MonthView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/MonthView$4;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v0}, Lcom/android/calendar/MonthView;->clearCachedEvents()V

    return-void
.end method
