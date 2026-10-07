.class public Lcom/android/settings/display/AutoBrightnessSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AutoBrightnessSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAutoBrightness:Landroid/support/v14/preference/SwitchPreference;

.field private mHandler:Landroid/os/Handler;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 108
    new-instance v0, Lcom/android/settings/display/AutoBrightnessSettings$2;

    invoke-direct {v0}, Lcom/android/settings/display/AutoBrightnessSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/display/AutoBrightnessSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/display/AutoBrightnessSettings;->mHandler:Landroid/os/Handler;

    .line 48
    new-instance v0, Lcom/android/settings/display/AutoBrightnessSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/display/AutoBrightnessSettings$1;-><init>(Lcom/android/settings/display/AutoBrightnessSettings;)V

    iput-object v0, p0, Lcom/android/settings/display/AutoBrightnessSettings;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/display/AutoBrightnessSettings;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/display/AutoBrightnessSettings;

    .line 43
    iget-object v0, p0, Lcom/android/settings/display/AutoBrightnessSettings;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/display/AutoBrightnessSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/display/AutoBrightnessSettings;

    .line 43
    iget-object v0, p0, Lcom/android/settings/display/AutoBrightnessSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/display/AutoBrightnessSettings;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/display/AutoBrightnessSettings;

    .line 43
    iget-object v0, p0, Lcom/android/settings/display/AutoBrightnessSettings;->mAutoBrightness:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/display/AutoBrightnessSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/display/AutoBrightnessSettings;

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/display/AutoBrightnessSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 105
    const v0, 0x7f1206b6

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 95
    const-string v0, "AutoBrightnessSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 100
    const/16 v0, 0x565

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 90
    const v0, 0x7f15001f

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 76
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 77
    const-string v0, "auto_brightness"

    invoke-virtual {p0, v0}, Lcom/android/settings/display/AutoBrightnessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/display/AutoBrightnessSettings;->mAutoBrightness:Landroid/support/v14/preference/SwitchPreference;

    .line 78
    iget-object v0, p0, Lcom/android/settings/display/AutoBrightnessSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/display/AutoBrightnessSettings;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 79
    iget-object v0, p0, Lcom/android/settings/display/AutoBrightnessSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/display/AutoBrightnessSettings;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 68
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    iget-object v0, p0, Lcom/android/settings/display/AutoBrightnessSettings;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/FooterPreferenceMixin;->createFooterPreference()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object v0

    .line 70
    const v1, 0x7f120177

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    .line 72
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 84
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onDestroy()V

    .line 85
    iget-object v0, p0, Lcom/android/settings/display/AutoBrightnessSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/display/AutoBrightnessSettings;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method
