.class public abstract Lcom/android/settings/applications/assist/AssistSettingObserver;
.super Landroid/database/ContentObserver;
.source "AssistSettingObserver.java"


# instance fields
.field private final ASSIST_URI:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 31
    const-string v0, "assistant"

    .line 32
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/assist/AssistSettingObserver;->ASSIST_URI:Landroid/net/Uri;

    .line 36
    return-void
.end method

.method public static synthetic lambda$onChange$0(Lcom/android/settings/applications/assist/AssistSettingObserver;)V
    .locals 0

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/applications/assist/AssistSettingObserver;->onSettingChange()V

    .line 63
    return-void
.end method


# virtual methods
.method protected abstract getSettingUris()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 54
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, "shouldUpdatePreference":Z
    invoke-virtual {p0}, Lcom/android/settings/applications/assist/AssistSettingObserver;->getSettingUris()Ljava/util/List;

    move-result-object v1

    .line 57
    .local v1, "settingUri":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v2, p0, Lcom/android/settings/applications/assist/AssistSettingObserver;->ASSIST_URI:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    :cond_0
    const/4 v0, 0x1

    .line 60
    :cond_1
    if-eqz v0, :cond_2

    .line 61
    new-instance v2, Lcom/android/settings/applications/assist/-$$Lambda$AssistSettingObserver$iBFvDXS30QMXzEK-zAgHqcs78mE;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/assist/-$$Lambda$AssistSettingObserver$iBFvDXS30QMXzEK-zAgHqcs78mE;-><init>(Lcom/android/settings/applications/assist/AssistSettingObserver;)V

    invoke-static {v2}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 66
    :cond_2
    return-void
.end method

.method public abstract onSettingChange()V
.end method

.method public register(Landroid/content/ContentResolver;Z)V
    .locals 4
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "register"    # Z

    .line 39
    if-eqz p2, :cond_1

    .line 40
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistSettingObserver;->ASSIST_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/applications/assist/AssistSettingObserver;->getSettingUris()Ljava/util/List;

    move-result-object v0

    .line 42
    .local v0, "settingUri":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    if-eqz v0, :cond_0

    .line 43
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 44
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {p1, v3, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 45
    .end local v3
    goto :goto_0

    .line 47
    .end local v0
    :cond_0
    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 50
    :goto_1
    return-void
.end method
