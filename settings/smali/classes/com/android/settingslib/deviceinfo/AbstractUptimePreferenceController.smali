.class public abstract Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AbstractUptimePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController$MyHandler;
    }
.end annotation


# static fields
.field static final KEY_UPTIME:Ljava/lang/String; = "up_time"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mUptime:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 51
    if-eqz p2, :cond_0

    .line 52
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 54
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;

    .line 39
    invoke-direct {p0}, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->updateTimes()V

    return-void
.end method

.method private convert(J)Ljava/lang/String;
    .locals 5
    .param p1, "t"    # J

    .line 91
    const-wide/16 v0, 0x3c

    rem-long v2, p1, v0

    long-to-int v2, v2

    .line 92
    .local v2, "s":I
    div-long v3, p1, v0

    rem-long/2addr v3, v0

    long-to-int v0, v3

    .line 93
    .local v0, "m":I
    const-wide/16 v3, 0xe10

    div-long v3, p1, v3

    long-to-int v1, v3

    .line 95
    .local v1, "h":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController$MyHandler;

    invoke-direct {v0, p0}, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController$MyHandler;-><init>(Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;)V

    iput-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->mHandler:Landroid/os/Handler;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .param p1, "n"    # I

    .line 99
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 100
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateTimes()V
    .locals 5

    .line 108
    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->mUptime:Landroid/support/v7/preference/Preference;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-direct {p0, v1, v2}, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->convert(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 109
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 78
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 79
    const-string v0, "up_time"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->mUptime:Landroid/support/v7/preference/Preference;

    .line 80
    invoke-direct {p0}, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->updateTimes()V

    .line 81
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 73
    const-string v0, "up_time"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public onStart()V
    .locals 2

    .line 58
    invoke-direct {p0}, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 59
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 63
    invoke-direct {p0}, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 64
    return-void
.end method
