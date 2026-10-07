.class Lcom/android/settings/SettingsCleanCachedReceiver$1;
.super Ljava/lang/Object;
.source "SettingsCleanCachedReceiver.java"

# interfaces
.implements Lcom/android/settingslib/wifi/WifiTracker$WifiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsCleanCachedReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsCleanCachedReceiver;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsCleanCachedReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsCleanCachedReceiver;

    .line 484
    iput-object p1, p0, Lcom/android/settings/SettingsCleanCachedReceiver$1;->this$0:Lcom/android/settings/SettingsCleanCachedReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessPointsChanged()V
    .locals 0

    .line 499
    return-void
.end method

.method public onConnectedChanged()V
    .locals 0

    .line 494
    return-void
.end method

.method public onWifiStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .line 489
    return-void
.end method
