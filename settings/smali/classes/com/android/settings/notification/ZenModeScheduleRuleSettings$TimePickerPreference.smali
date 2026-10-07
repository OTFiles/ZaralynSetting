.class Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;
.super Landroid/support/v7/preference/Preference;
.source "ZenModeScheduleRuleSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenModeScheduleRuleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimePickerPreference"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;,
        Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;

.field private final mContext:Landroid/content/Context;

.field private mHourOfDay:I

.field private mMinute:I

.field private mSummaryFormat:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/FragmentManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mgr"    # Landroid/app/FragmentManager;

    .line 247
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 248
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->mContext:Landroid/content/Context;

    .line 249
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setPersistent(Z)V

    .line 250
    new-instance v0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$1;-><init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;Landroid/app/FragmentManager;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 259
    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    .line 238
    iget v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->mHourOfDay:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    .line 238
    iget v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->mMinute:I

    return v0
.end method

.method private updateSummary()V
    .locals 6

    .line 278
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 279
    .local v0, "c":Ljava/util/Calendar;
    iget v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->mHourOfDay:I

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 280
    iget v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->mMinute:I

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 281
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, "time":Ljava/lang/String;
    iget v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->mSummaryFormat:I

    if-eqz v2, :cond_0

    .line 283
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->mSummaryFormat:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 285
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 286
    return-void
.end method


# virtual methods
.method public setCallback(Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;

    .line 262
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->mCallback:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;

    .line 263
    return-void
.end method

.method public setSummaryFormat(I)V
    .locals 0
    .param p1, "resId"    # I

    .line 266
    iput p1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->mSummaryFormat:I

    .line 267
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->updateSummary()V

    .line 268
    return-void
.end method

.method public setTime(II)V
    .locals 1
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .line 271
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->mCallback:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->mCallback:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;->onSetTime(II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 272
    :cond_0
    iput p1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->mHourOfDay:I

    .line 273
    iput p2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->mMinute:I

    .line 274
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;->updateSummary()V

    .line 275
    return-void
.end method
