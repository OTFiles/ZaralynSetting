.class public Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;
.super Ljava/lang/Object;
.source "AppStateNotificationBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppStateNotificationBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationsSentState"
.end annotation


# instance fields
.field public avgSentDaily:I

.field public avgSentWeekly:I

.field public blockable:Z

.field public blocked:Z

.field public lastSent:J

.field public sentCount:I

.field public systemApp:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->avgSentDaily:I

    .line 318
    iput v0, p0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->avgSentWeekly:I

    .line 319
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->lastSent:J

    .line 320
    iput v0, p0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->sentCount:I

    return-void
.end method
