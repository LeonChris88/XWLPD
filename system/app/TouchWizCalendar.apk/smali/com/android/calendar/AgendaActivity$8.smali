.class Lcom/android/calendar/AgendaActivity$8;
.super Ljava/lang/Object;
.source "AgendaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AgendaActivity;->setupTabView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AgendaActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/AgendaActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendar/AgendaActivity$8;->this$0:Lcom/android/calendar/AgendaActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/calendar/AgendaActivity$8;->this$0:Lcom/android/calendar/AgendaActivity;

    invoke-virtual {v3}, Lcom/android/calendar/AgendaActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/View;->setSelected(Z)V

    iget-object v3, p0, Lcom/android/calendar/AgendaActivity$8;->this$0:Lcom/android/calendar/AgendaActivity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "preferences_day_view"

    sget-object v4, Lcom/android/calendar/CalendarSettingsActivity;->DEFAULT_DAY_VIEW:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/calendar/CalendarApplication;->ACTIVITY_NAMES:[Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v1, v3, v4

    iget-object v3, p0, Lcom/android/calendar/AgendaActivity$8;->this$0:Lcom/android/calendar/AgendaActivity;

    iget-object v4, p0, Lcom/android/calendar/AgendaActivity$8;->this$0:Lcom/android/calendar/AgendaActivity;

    invoke-virtual {v4}, Lcom/android/calendar/AgendaActivity;->getSelectedDayInMillis()J

    move-result-wide v4

    invoke-static {v3, v1, v4, v5}, Lcom/android/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object v3, p0, Lcom/android/calendar/AgendaActivity$8;->this$0:Lcom/android/calendar/AgendaActivity;

    invoke-virtual {v3}, Lcom/android/calendar/AgendaActivity;->finish()V

    iget-object v3, p0, Lcom/android/calendar/AgendaActivity$8;->this$0:Lcom/android/calendar/AgendaActivity;

    invoke-virtual {v3, v6, v6}, Lcom/android/calendar/AgendaActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method
