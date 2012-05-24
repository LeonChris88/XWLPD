.class Lcom/seven/Z7/shared/Z7DBSharedPreferences$PreferenceObserver;
.super Landroid/database/ContentObserver;
.source "Z7DBSharedPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seven/Z7/shared/Z7DBSharedPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreferenceObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/seven/Z7/shared/Z7DBSharedPreferences;


# direct methods
.method public constructor <init>(Lcom/seven/Z7/shared/Z7DBSharedPreferences;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences$PreferenceObserver;->this$0:Lcom/seven/Z7/shared/Z7DBSharedPreferences;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 3

    iget-object v1, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences$PreferenceObserver;->this$0:Lcom/seven/Z7/shared/Z7DBSharedPreferences;

    invoke-static {v1}, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->access$100(Lcom/seven/Z7/shared/Z7DBSharedPreferences;)Lcom/seven/Z7/shared/Z7DBSharedPreferenceCache;

    move-result-object v1

    iget-object v2, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences$PreferenceObserver;->this$0:Lcom/seven/Z7/shared/Z7DBSharedPreferences;

    invoke-static {v2}, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->access$000(Lcom/seven/Z7/shared/Z7DBSharedPreferences;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/seven/Z7/shared/Z7DBSharedPreferenceCache;->refreshCache(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/seven/Z7/shared/Z7DBSharedPreferences$PreferenceObserver;->this$0:Lcom/seven/Z7/shared/Z7DBSharedPreferences;

    invoke-static {v1, v0}, Lcom/seven/Z7/shared/Z7DBSharedPreferences;->access$200(Lcom/seven/Z7/shared/Z7DBSharedPreferences;Ljava/util/List;)V

    return-void
.end method
