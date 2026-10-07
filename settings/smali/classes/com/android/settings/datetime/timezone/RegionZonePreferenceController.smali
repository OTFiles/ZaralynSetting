.class public Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;
.super Lcom/android/settings/datetime/timezone/BaseTimeZonePreferenceController;
.source "RegionZonePreferenceController.java"


# static fields
.field private static final PREFERENCE_KEY:Ljava/lang/String; = "region_zone"


# instance fields
.field private mIsClickable:Z

.field private mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    const-string v0, "region_zone"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/datetime/timezone/BaseTimeZonePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 5

    .line 47
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f121284

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    .line 50
    invoke-virtual {v4}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getExemplarLocation()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    invoke-virtual {v4}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getGmtOffset()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    .line 48
    invoke-static {v0, v1, v2}, Lcom/android/settings/datetime/timezone/SpannableUtil;->getResourcesText(Landroid/content/res/Resources;I[Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0
.end method

.method public getTimeZoneInfo()Lcom/android/settings/datetime/timezone/TimeZoneInfo;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    return-object v0
.end method

.method public isClickable()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->mIsClickable:Z

    return v0
.end method

.method public setClickable(Z)V
    .locals 0
    .param p1, "clickable"    # Z

    .line 62
    iput-boolean p1, p0, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->mIsClickable:Z

    .line 63
    return-void
.end method

.method public setTimeZoneInfo(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)V
    .locals 0
    .param p1, "timeZoneInfo"    # Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    .line 54
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    .line 55
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 41
    invoke-super {p0, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZonePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 43
    return-void
.end method
