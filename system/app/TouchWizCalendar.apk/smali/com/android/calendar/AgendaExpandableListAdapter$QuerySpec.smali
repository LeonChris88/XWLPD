.class Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;
.super Ljava/lang/Object;
.source "AgendaExpandableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AgendaExpandableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QuerySpec"
.end annotation


# instance fields
.field end:I

.field goToTime:Landroid/text/format/Time;

.field queryStartMillis:J

.field queryType:I

.field start:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->queryType:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;

    iget v3, p0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->end:I

    iget v4, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->end:I

    if-ne v3, v4, :cond_4

    iget-wide v3, p0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->queryStartMillis:J

    iget-wide v5, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->queryStartMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    iget v3, p0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->queryType:I

    iget v4, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->queryType:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->start:I

    iget v4, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->start:I

    if-eq v3, v4, :cond_5

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    invoke-virtual {v3, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    iget-object v5, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    invoke-virtual {v5, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_6
    iget-object v3, v0, Lcom/android/calendar/AgendaExpandableListAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method
