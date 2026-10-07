.class public Lcom/android/settings/accessibility/CaptionPropertiesFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "CaptionPropertiesFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;


# instance fields
.field private mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

.field private mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

.field private mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

.field private mCustom:Landroid/support/v7/preference/PreferenceCategory;

.field private mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

.field private mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

.field private mFontSize:Landroid/support/v7/preference/ListPreference;

.field private mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

.field private mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

.field private mLocale:Lcom/android/settings/accessibility/LocalePreference;

.field private mPreset:Lcom/android/settings/accessibility/PresetPreference;

.field private mPreviewText:Lcom/android/internal/widget/SubtitleView;

.field private mPreviewViewport:Landroid/view/View;

.field private mPreviewWindow:Landroid/view/View;

.field private mShowingCustom:Z

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

.field private mTypeface:Landroid/support/v7/preference/ListPreference;

.field private mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

.field private mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    .line 54
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/settings/widget/SwitchBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    .line 54
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/internal/widget/SubtitleView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    .line 54
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    return-object v0
.end method

.method public static applyCaptionProperties(Landroid/view/accessibility/CaptioningManager;Lcom/android/internal/widget/SubtitleView;Landroid/view/View;I)V
    .locals 6
    .param p0, "manager"    # Landroid/view/accessibility/CaptioningManager;
    .param p1, "previewText"    # Lcom/android/internal/widget/SubtitleView;
    .param p2, "previewWindow"    # Landroid/view/View;
    .param p3, "styleId"    # I

    .line 214
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/SubtitleView;->setStyle(I)V

    .line 216
    invoke-virtual {p1}, Lcom/android/internal/widget/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 217
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 218
    .local v1, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v2

    .line 219
    .local v2, "fontScale":F
    if-eqz p2, :cond_0

    .line 221
    const/16 v3, 0x9

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    mul-int/2addr v3, v4

    const/16 v4, 0x10

    .line 222
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    .line 221
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x41800000    # 16.0f

    div-float/2addr v3, v4

    .line 223
    .local v3, "virtualHeight":F
    const v4, 0x3d5a511a    # 0.0533f

    mul-float/2addr v4, v3

    mul-float/2addr v4, v2

    invoke-virtual {p1, v4}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    .line 224
    .end local v3
    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07009f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 227
    .local v3, "textSize":F
    mul-float v4, v3, v2

    invoke-virtual {p1, v4}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    .line 230
    .end local v3
    :goto_0
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 231
    .local v3, "locale":Ljava/util/Locale;
    const v4, 0x7f120367

    if-eqz v3, :cond_1

    .line 232
    invoke-static {v0, v3, v4}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getTextForLocale(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 234
    .local v4, "localizedText":Ljava/lang/CharSequence;
    invoke-virtual {p1, v4}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    .end local v4
    goto :goto_1

    .line 236
    :cond_1
    invoke-virtual {p1, v4}, Lcom/android/internal/widget/SubtitleView;->setText(I)V

    .line 238
    :goto_1
    return-void
.end method

.method private initializeAllPreferences()V
    .locals 12

    .line 267
    const-string v0, "captioning_locale"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/LocalePreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings/accessibility/LocalePreference;

    .line 268
    const-string v0, "captioning_font_size"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    .line 270
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 271
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f030038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 272
    .local v1, "presetValues":[I
    const v2, 0x7f030037

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, "presetTitles":[Ljava/lang/String;
    const-string v3, "captioning_preset"

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accessibility/PresetPreference;

    iput-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    .line 274
    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v3, v1}, Lcom/android/settings/accessibility/PresetPreference;->setValues([I)V

    .line 275
    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v3, v2}, Lcom/android/settings/accessibility/PresetPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 277
    const-string v3, "custom"

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    .line 278
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    .line 280
    const v4, 0x7f030030

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    .line 281
    .local v4, "colorValues":[I
    const v5, 0x7f03002f

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 282
    .local v5, "colorTitles":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    const-string v7, "captioning_foreground_color"

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    .line 283
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v6, v5}, Lcom/android/settings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 284
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v6, v4}, Lcom/android/settings/accessibility/ColorPreference;->setValues([I)V

    .line 286
    const v6, 0x7f030036

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    .line 287
    .local v6, "opacityValues":[I
    const v7, 0x7f030035

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 289
    .local v7, "opacityTitles":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    const-string v9, "captioning_foreground_opacity"

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    .line 290
    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v8, v7}, Lcom/android/settings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 291
    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v8, v6}, Lcom/android/settings/accessibility/ColorPreference;->setValues([I)V

    .line 293
    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    const-string v9, "captioning_edge_color"

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    .line 294
    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v8, v5}, Lcom/android/settings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 295
    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v8, v4}, Lcom/android/settings/accessibility/ColorPreference;->setValues([I)V

    .line 298
    array-length v8, v4

    add-int/2addr v8, v3

    new-array v8, v8, [I

    .line 299
    .local v8, "bgColorValues":[I
    array-length v9, v5

    add-int/2addr v9, v3

    new-array v9, v9, [Ljava/lang/String;

    .line 300
    .local v9, "bgColorTitles":[Ljava/lang/String;
    array-length v10, v4

    const/4 v11, 0x0

    invoke-static {v4, v11, v8, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    array-length v10, v5

    invoke-static {v5, v11, v9, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    aput v11, v8, v11

    .line 303
    const v3, 0x7f1203b6

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v11

    .line 304
    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    const-string v10, "captioning_background_color"

    invoke-virtual {v3, v10}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    .line 305
    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v3, v9}, Lcom/android/settings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 306
    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v3, v8}, Lcom/android/settings/accessibility/ColorPreference;->setValues([I)V

    .line 308
    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    const-string v10, "captioning_background_opacity"

    invoke-virtual {v3, v10}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    .line 309
    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v3, v7}, Lcom/android/settings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 310
    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v3, v6}, Lcom/android/settings/accessibility/ColorPreference;->setValues([I)V

    .line 312
    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    const-string v10, "captioning_window_color"

    invoke-virtual {v3, v10}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

    .line 313
    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v3, v9}, Lcom/android/settings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 314
    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v3, v8}, Lcom/android/settings/accessibility/ColorPreference;->setValues([I)V

    .line 316
    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    const-string v10, "captioning_window_opacity"

    invoke-virtual {v3, v10}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    .line 317
    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v3, v7}, Lcom/android/settings/accessibility/ColorPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 318
    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v3, v6}, Lcom/android/settings/accessibility/ColorPreference;->setValues([I)V

    .line 320
    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    const-string v10, "captioning_edge_type"

    invoke-virtual {v3, v10}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accessibility/EdgeTypePreference;

    iput-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

    .line 321
    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    const-string v10, "captioning_typeface"

    invoke-virtual {v3, v10}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/ListPreference;

    iput-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/support/v7/preference/ListPreference;

    .line 322
    return-void
.end method

.method private installSwitchBarToggleSwitch()V
    .locals 4

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->onInstallSwitchBarToggleSwitch()V

    .line 258
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12004a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/SwitchBar;->show(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method private installUpdateListeners()V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/PresetPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 326
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 327
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 328
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 329
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 330
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 331
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 332
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ColorPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 333
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/EdgeTypePreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 335
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 336
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 337
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings/accessibility/LocalePreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/LocalePreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 338
    return-void
.end method

.method private mergeColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;)I
    .locals 4
    .param p1, "color"    # Lcom/android/settings/accessibility/ColorPreference;
    .param p2, "opacity"    # Lcom/android/settings/accessibility/ColorPreference;

    .line 401
    invoke-virtual {p1}, Lcom/android/settings/accessibility/ColorPreference;->getValue()I

    move-result v0

    .line 402
    .local v0, "colorValue":I
    invoke-virtual {p2}, Lcom/android/settings/accessibility/ColorPreference;->getValue()I

    move-result v1

    .line 405
    .local v1, "opacityValue":I
    invoke-static {v0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 407
    const v2, 0xffff00

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    or-int/2addr v2, v3

    .local v2, "value":I
    :goto_0
    goto :goto_1

    .line 408
    .end local v2
    :cond_0
    if-nez v0, :cond_1

    .line 410
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    goto :goto_0

    .line 413
    :cond_1
    const v2, 0xffffff

    and-int/2addr v2, v0

    const/high16 v3, -0x1000000

    and-int/2addr v3, v1

    or-int/2addr v2, v3

    .line 415
    .restart local v2
    :goto_1
    return v2
.end method

.method private parseColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;I)V
    .locals 4
    .param p1, "color"    # Lcom/android/settings/accessibility/ColorPreference;
    .param p2, "opacity"    # Lcom/android/settings/accessibility/ColorPreference;
    .param p3, "value"    # I

    .line 381
    invoke-static {p3}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasColor(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    const v0, 0xffffff

    .line 384
    .local v0, "colorValue":I
    and-int/lit16 v1, p3, 0xff

    shl-int/lit8 v1, v1, 0x18

    .local v1, "opacityValue":I
    :goto_0
    goto :goto_1

    .line 385
    .end local v0
    .end local v1
    :cond_0
    ushr-int/lit8 v0, p3, 0x18

    if-nez v0, :cond_1

    .line 387
    const/4 v0, 0x0

    .line 388
    .restart local v0
    and-int/lit16 v1, p3, 0xff

    shl-int/lit8 v1, v1, 0x18

    goto :goto_0

    .line 391
    .end local v0
    :cond_1
    const/high16 v0, -0x1000000

    or-int v1, p3, v0

    .line 392
    .local v1, "colorValue":I
    and-int/2addr v0, p3

    move v3, v1

    move v1, v0

    move v0, v3

    .line 396
    .restart local v0
    .local v1, "opacityValue":I
    :goto_1
    const v2, 0xffffff

    or-int/2addr v2, v1

    invoke-virtual {p2, v2}, Lcom/android/settings/accessibility/ColorPreference;->setValue(I)V

    .line 397
    invoke-virtual {p1, v0}, Lcom/android/settings/accessibility/ColorPreference;->setValue(I)V

    .line 398
    return-void
.end method

.method private refreshPreviewText()V
    .locals 8

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 183
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 185
    return-void

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    .line 189
    .local v1, "preview":Lcom/android/internal/widget/SubtitleView;
    if-eqz v1, :cond_3

    .line 190
    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    move-result v2

    .line 191
    .local v2, "styleId":I
    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v4, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewViewport:Landroid/view/View;

    invoke-static {v3, v1, v4, v2}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->applyCaptionProperties(Landroid/view/accessibility/CaptioningManager;Lcom/android/internal/widget/SubtitleView;Landroid/view/View;I)V

    .line 193
    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 194
    .local v3, "locale":Ljava/util/Locale;
    const v4, 0x7f120368

    if-eqz v3, :cond_1

    .line 195
    invoke-static {v0, v3, v4}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getTextForLocale(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 197
    .local v4, "localizedText":Ljava/lang/CharSequence;
    invoke-virtual {v1, v4}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    .end local v4
    goto :goto_0

    .line 199
    :cond_1
    invoke-virtual {v1, v4}, Lcom/android/internal/widget/SubtitleView;->setText(I)V

    .line 202
    :goto_0
    iget-object v4, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v4}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v4

    .line 203
    .local v4, "style":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    invoke-virtual {v4}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 204
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewWindow:Landroid/view/View;

    iget v6, v4, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 206
    :cond_2
    sget-object v5, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 207
    .local v5, "defStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewWindow:Landroid/view/View;

    iget v7, v5, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 210
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    :cond_3
    :goto_1
    return-void
.end method

.method private refreshShowingCustom()V
    .locals 4

    .line 419
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/PresetPreference;->getValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 420
    .local v0, "customPreset":Z
    :goto_0
    if-nez v0, :cond_1

    iget-boolean v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    if-eqz v3, :cond_1

    .line 421
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 422
    iput-boolean v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    goto :goto_1

    .line 423
    :cond_1
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    if-nez v1, :cond_2

    .line 424
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 425
    iput-boolean v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    .line 427
    :cond_2
    :goto_1
    return-void
.end method

.method private removeSwitchBarToggleSwitch()V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->hide(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 264
    return-void
.end method

.method private updateAllPreferences()V
    .locals 11

    .line 341
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    move-result v0

    .line 342
    .local v0, "preset":I
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/accessibility/PresetPreference;->setValue(I)V

    .line 344
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v1

    .line 345
    .local v1, "fontSize":F
    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 348
    .local v2, "cr":Landroid/content/ContentResolver;
    invoke-static {v2}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v3

    .line 349
    .local v3, "attrs":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    iget-object v4, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

    iget v5, v3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    invoke-virtual {v4, v5}, Lcom/android/settings/accessibility/EdgeTypePreference;->setValue(I)V

    .line 350
    iget-object v4, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    iget v5, v3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    invoke-virtual {v4, v5}, Lcom/android/settings/accessibility/ColorPreference;->setValue(I)V

    .line 352
    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result v4

    const v5, 0xffffff

    if-eqz v4, :cond_0

    .line 353
    iget v4, v3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    goto :goto_0

    :cond_0
    move v4, v5

    .line 354
    .local v4, "foregroundColor":I
    :goto_0
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-direct {p0, v6, v7, v4}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->parseColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;I)V

    .line 356
    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 357
    iget v6, v3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    goto :goto_1

    :cond_1
    move v6, v5

    .line 358
    .local v6, "backgroundColor":I
    :goto_1
    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-direct {p0, v7, v8, v6}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->parseColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;I)V

    .line 360
    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 361
    iget v5, v3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    nop

    .line 362
    .local v5, "windowColor":I
    :cond_2
    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-direct {p0, v7, v8, v5}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->parseColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;I)V

    .line 364
    iget-object v7, v3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    .line 365
    .local v7, "rawTypeface":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/support/v7/preference/ListPreference;

    if-nez v7, :cond_3

    const-string v9, ""

    goto :goto_2

    :cond_3
    move-object v9, v7

    :goto_2
    invoke-virtual {v8, v9}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 367
    iget-object v8, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v8}, Landroid/view/accessibility/CaptioningManager;->getRawLocale()Ljava/lang/String;

    move-result-object v8

    .line 368
    .local v8, "rawLocale":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings/accessibility/LocalePreference;

    if-nez v8, :cond_4

    const-string v10, ""

    goto :goto_3

    :cond_4
    move-object v10, v8

    :goto_3
    invoke-virtual {v9, v10}, Lcom/android/settings/accessibility/LocalePreference;->setValue(Ljava/lang/String;)V

    .line 369
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 101
    const/4 v0, 0x3

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 156
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 158
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    .line 159
    .local v0, "enabled":Z
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    .line 161
    .local v1, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/SettingsActivity;->getSwitchBar(Ljava/lang/String;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 163
    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const v3, 0x7f120049

    invoke-virtual {v2, v3, v3}, Lcom/android/settings/widget/SwitchBar;->setTextTitleById(II)V

    .line 165
    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v0}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 166
    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    .line 170
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    .line 172
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->installSwitchBarToggleSwitch()V

    .line 173
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 106
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 108
    const-string v0, "captioning"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 110
    const v0, 0x7f15002b

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->addPreferencesFromResource(I)V

    .line 111
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->initializeAllPreferences()V

    .line 112
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->updateAllPreferences()V

    .line 113
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->refreshShowingCustom()V

    .line 114
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->installUpdateListeners()V

    .line 115
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 120
    const v0, 0x7f0d0053

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 124
    .local v0, "rootView":Landroid/view/View;
    instance-of v1, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 128
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 129
    .local v1, "content":Landroid/view/View;
    const v2, 0x7f0a0333

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 132
    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .line 177
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 178
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->removeSwitchBarToggleSwitch()V

    .line 179
    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment$2;-><init>(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 254
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .line 458
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 459
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/support/v7/preference/ListPreference;

    if-ne v1, p1, :cond_0

    .line 460
    const-string v1, "accessibility_captioning_typeface"

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 462
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/support/v7/preference/ListPreference;

    if-ne v1, p1, :cond_1

    .line 463
    const-string v1, "accessibility_captioning_font_scale"

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    .line 465
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 463
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto :goto_0

    .line 466
    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings/accessibility/LocalePreference;

    if-ne v1, p1, :cond_2

    .line 467
    const-string v1, "accessibility_captioning_locale"

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 471
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    .line 472
    const/4 v1, 0x1

    return v1
.end method

.method public onValueChanged(Lcom/android/settings/accessibility/ListDialogPreference;I)V
    .locals 3
    .param p1, "preference"    # Lcom/android/settings/accessibility/ListDialogPreference;
    .param p2, "value"    # I

    .line 431
    invoke-virtual {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 432
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    if-eq v1, p1, :cond_7

    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    if-ne v1, p1, :cond_0

    goto :goto_2

    .line 436
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    if-eq v1, p1, :cond_6

    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    if-ne v1, p1, :cond_1

    goto :goto_1

    .line 440
    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

    if-eq v1, p1, :cond_5

    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    if-ne v1, p1, :cond_2

    goto :goto_0

    .line 444
    :cond_2
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    if-ne v1, p1, :cond_3

    .line 445
    const-string v1, "accessibility_captioning_edge_color"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 446
    :cond_3
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    if-ne v1, p1, :cond_4

    .line 447
    const-string v1, "accessibility_captioning_preset"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 448
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->refreshShowingCustom()V

    goto :goto_3

    .line 449
    :cond_4
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

    if-ne v1, p1, :cond_8

    .line 450
    const-string v1, "accessibility_captioning_edge_type"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 441
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowColor:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mWindowOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mergeColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;)I

    move-result v1

    .line 442
    .local v1, "merged":I
    const-string v2, "accessibility_captioning_window_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 444
    .end local v1
    goto :goto_3

    .line 437
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mergeColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;)I

    move-result v1

    .line 438
    .restart local v1
    const-string v2, "accessibility_captioning_background_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 440
    .end local v1
    goto :goto_3

    .line 433
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mergeColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;)I

    move-result v1

    .line 434
    .restart local v1
    const-string v2, "accessibility_captioning_foreground_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 436
    .end local v1
    nop

    .line 453
    :cond_8
    :goto_3
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    .line 454
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 137
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    .line 140
    .local v0, "enabled":Z
    const v1, 0x7f0a0313

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/SubtitleView;

    iput-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    .line 141
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SubtitleView;->setVisibility(I)V

    .line 143
    const v1, 0x7f0a0315

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewWindow:Landroid/view/View;

    .line 144
    const v1, 0x7f0a0314

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewViewport:Landroid/view/View;

    .line 145
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewViewport:Landroid/view/View;

    new-instance v2, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;-><init>(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 152
    return-void
.end method
