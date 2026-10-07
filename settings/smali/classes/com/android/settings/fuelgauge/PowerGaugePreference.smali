.class public Lcom/android/settings/fuelgauge/PowerGaugePreference;
.super Lcom/android/settings/widget/AppPreference;
.source "PowerGaugePreference.java"


# instance fields
.field private mContentDescription:Ljava/lang/CharSequence;

.field private mInfo:Lcom/android/settings/fuelgauge/BatteryEntry;

.field private mProgress:Ljava/lang/CharSequence;

.field private mShowAnomalyIcon:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/BatteryEntry;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/BatteryEntry;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "contentDescription"    # Ljava/lang/CharSequence;
    .param p4, "info"    # Lcom/android/settings/fuelgauge/BatteryEntry;

    .line 46
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/BatteryEntry;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 54
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/BatteryEntry;)V

    .line 55
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/BatteryEntry;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "contentDescription"    # Ljava/lang/CharSequence;
    .param p5, "info"    # Lcom/android/settings/fuelgauge/BatteryEntry;

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/AppPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const v0, 0x7f0d0115

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setLayoutResource(I)V

    .line 61
    if-eqz p3, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 62
    const v0, 0x7f0d015d

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setWidgetLayoutResource(I)V

    .line 63
    iput-object p5, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mInfo:Lcom/android/settings/fuelgauge/BatteryEntry;

    .line 64
    iput-object p4, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mShowAnomalyIcon:Z

    .line 66
    return-void
.end method


# virtual methods
.method getInfo()Lcom/android/settings/fuelgauge/BatteryEntry;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mInfo:Lcom/android/settings/fuelgauge/BatteryEntry;

    return-object v0
.end method

.method public getPercent()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgress:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 106
    invoke-super {p0, p1}, Lcom/android/settings/widget/AppPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 108
    const v0, 0x7f0a04e9

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 109
    .local v0, "subtitle":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgress:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mShowAnomalyIcon:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 111
    const v1, 0x7f08022f

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 116
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mContentDescription:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 117
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 118
    .local v1, "titleView":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 120
    .end local v1
    :cond_1
    return-void
.end method

.method public setContentDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->notifyChanged()V

    .line 71
    return-void
.end method

.method public setPercent(D)V
    .locals 1
    .param p1, "percentOfTotal"    # D

    .line 74
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/android/settings/Utils;->formatPercentage(DZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgress:Ljava/lang/CharSequence;

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->notifyChanged()V

    .line 76
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 83
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mProgress:Ljava/lang/CharSequence;

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->notifyChanged()V

    .line 85
    return-void
.end method

.method public shouldShowAnomalyIcon(Z)V
    .locals 0
    .param p1, "showAnomalyIcon"    # Z

    .line 92
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mShowAnomalyIcon:Z

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->notifyChanged()V

    .line 94
    return-void
.end method
