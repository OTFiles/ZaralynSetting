.class Lcom/android/settings/applications/AppStateNotificationBridge$4;
.super Ljava/lang/Object;
.source "AppStateNotificationBridge.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppStateNotificationBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)I
    .locals 6
    .param p1, "object1"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .param p2, "object2"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 282
    invoke-static {p1}, Lcom/android/settings/applications/AppStateNotificationBridge;->access$000(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    move-result-object v0

    .line 283
    .local v0, "state1":Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;
    invoke-static {p2}, Lcom/android/settings/applications/AppStateNotificationBridge;->access$000(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    move-result-object v1

    .line 284
    .local v1, "state2":Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;
    const/4 v2, -0x1

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    return v2

    .line 285
    :cond_0
    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    return v3

    .line 286
    :cond_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 287
    iget v4, v0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->sentCount:I

    iget v5, v1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->sentCount:I

    if-ge v4, v5, :cond_2

    return v3

    .line 288
    :cond_2
    iget v3, v0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->sentCount:I

    iget v4, v1, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->sentCount:I

    if-le v3, v4, :cond_3

    return v2

    .line 290
    :cond_3
    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v2, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 279
    check-cast p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    check-cast p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/AppStateNotificationBridge$4;->compare(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)I

    move-result p1

    return p1
.end method
