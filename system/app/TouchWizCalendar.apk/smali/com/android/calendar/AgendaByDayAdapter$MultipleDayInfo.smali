.class Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;
.super Ljava/lang/Object;
.source "AgendaByDayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AgendaByDayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultipleDayInfo"
.end annotation


# instance fields
.field final mEndDay:I

.field final mPosition:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;->mPosition:I

    iput p2, p0, Lcom/android/calendar/AgendaByDayAdapter$MultipleDayInfo;->mEndDay:I

    return-void
.end method
