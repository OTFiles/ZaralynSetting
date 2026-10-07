.class public Lcom/android/settings/tts/TextToSpeechSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TextToSpeechSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/widget/GearPreference$OnGearClickListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mActionButtons:Lcom/android/settings/widget/ActionButtonPreference;

.field private mAvailableStrLocals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentDefaultLocale:Ljava/util/Locale;

.field private mCurrentEngine:Ljava/lang/String;

.field private mDefaultPitch:I

.field private mDefaultPitchPref:Lcom/android/settings/widget/SeekBarPreference;

.field private mDefaultRate:I

.field private mDefaultRatePref:Lcom/android/settings/widget/SeekBarPreference;

.field private mEnginesHelper:Landroid/speech/tts/TtsEngines;

.field private final mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mLocalePreference:Landroid/support/v7/preference/ListPreference;

.field private mSampleText:Ljava/lang/String;

.field private mSelectedLocaleIndex:I

.field private mTts:Landroid/speech/tts/TextToSpeech;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 781
    new-instance v0, Lcom/android/settings/tts/TextToSpeechSettings$5;

    invoke-direct {v0}, Lcom/android/settings/tts/TextToSpeechSettings$5;-><init>()V

    sput-object v0, Lcom/android/settings/tts/TextToSpeechSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 115
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitch:I

    .line 116
    iput v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSelectedLocaleIndex:I

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 124
    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 126
    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSampleText:Ljava/lang/String;

    .line 147
    new-instance v0, Lcom/android/settings/tts/TextToSpeechSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/tts/TextToSpeechSettings$1;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/support/v7/preference/ListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/tts/TextToSpeechSettings;

    .line 61
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    return-object v0
.end method

.method private checkDefaultLocale()V
    .locals 4

    .line 383
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getDefaultLanguage()Ljava/util/Locale;

    move-result-object v0

    .line 384
    .local v0, "defaultLocale":Ljava/util/Locale;
    if-nez v0, :cond_0

    .line 385
    const-string v1, "TextToSpeechSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get default language from engine "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    .line 387
    return-void

    .line 392
    :cond_0
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    .line 393
    .local v1, "oldDefaultLocale":Ljava/util/Locale;
    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/speech/tts/TtsEngines;->parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    .line 394
    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 395
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSampleText:Ljava/lang/String;

    .line 398
    :cond_1
    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v2

    .line 399
    .local v2, "defaultAvailable":I
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->evaluateDefaultLocale()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSampleText:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 400
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getSampleText()V

    .line 402
    :cond_2
    return-void
.end method

.method private checkVoiceData(Ljava/lang/String;)V
    .locals 5
    .param p1, "engine"    # Ljava/lang/String;

    .line 729
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 730
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 733
    const/16 v1, 0x7b9

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 736
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 734
    :catch_0
    move-exception v1

    .line 735
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    const-string v2, "TextToSpeechSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to check TTS data, no activity found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    .end local v1
    :goto_0
    return-void
.end method

.method private displayNetworkAlert()V
    .locals 4

    .line 717
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 718
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 719
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f120ead

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 720
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 721
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 723
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 724
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 725
    return-void
.end method

.method private evaluateDefaultLocale()Z
    .locals 7

    .line 407
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mAvailableStrLocals:Ljava/util/List;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 411
    :cond_0
    const/4 v0, 0x1

    move v2, v0

    .line 414
    .local v2, "notInAvailableLangauges":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v3

    .line 415
    .local v3, "defaultLocaleStr":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 416
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 418
    :cond_1
    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 419
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 422
    :cond_2
    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mAvailableStrLocals:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 423
    .local v5, "loc":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_3

    .line 424
    const/4 v2, 0x0

    .line 425
    goto :goto_1

    .line 427
    .end local v5
    :cond_3
    goto :goto_0

    .line 432
    .end local v3
    :cond_4
    :goto_1
    nop

    .line 434
    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v3

    .line 435
    .local v3, "defaultAvailable":I
    const/4 v4, -0x2

    if-eq v3, v4, :cond_6

    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    if-eqz v2, :cond_5

    goto :goto_2

    .line 442
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    .line 443
    return v0

    .line 439
    :cond_6
    :goto_2
    invoke-direct {p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    .line 440
    return v1

    .line 428
    .end local v3
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Ljava/util/MissingResourceException;
    invoke-direct {p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    .line 431
    return v1

    .line 408
    .end local v0
    .end local v2
    :cond_7
    :goto_3
    return v1
.end method

.method private getDefaultSampleString()Ljava/lang/String;
    .locals 5

    .line 561
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 563
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, "currentLang":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 566
    .local v1, "strings":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030079

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 569
    .local v2, "langs":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 570
    aget-object v4, v2, v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 571
    aget-object v4, v1, v3

    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 569
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 577
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    :cond_1
    goto :goto_1

    .line 574
    :catch_0
    move-exception v0

    .line 579
    :cond_2
    :goto_1
    const v0, 0x7f120eac

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSampleText()V
    .locals 6

    .line 452
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, "currentEngine":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    .line 460
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.tts.engine.GET_SAMPLE_TEXT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 462
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "language"

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    const-string v2, "country"

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    const-string v2, "variant"

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 469
    const/16 v2, 0x7bf

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/tts/TextToSpeechSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 472
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 470
    :catch_0
    move-exception v2

    .line 471
    .local v2, "ex":Landroid/content/ActivityNotFoundException;
    const-string v3, "TextToSpeechSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get sample text, no activity found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    .end local v2
    :goto_0
    return-void
.end method

.method private getSeekBarProgressFromValue(Ljava/lang/String;I)I
    .locals 1
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 352
    const-string v0, "tts_default_rate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    add-int/lit8 v0, p2, -0xa

    return v0

    .line 354
    :cond_0
    const-string v0, "tts_default_pitch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    add-int/lit8 v0, p2, -0x19

    return v0

    .line 357
    :cond_1
    return p2
.end method

.method private getValueFromSeekBarProgress(Ljava/lang/String;I)I
    .locals 1
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "progress"    # I

    .line 339
    const-string v0, "tts_default_rate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    const/16 v0, 0xa

    add-int/2addr v0, p2

    return v0

    .line 341
    :cond_0
    const-string v0, "tts_default_pitch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    const/16 v0, 0x19

    add-int/2addr v0, p2

    return v0

    .line 344
    :cond_1
    return p2
.end method

.method private initSettings()V
    .locals 4

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 290
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "tts_default_rate"

    .line 291
    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    .line 293
    const-string v1, "tts_default_pitch"

    .line 294
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitch:I

    .line 297
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRatePref:Lcom/android/settings/widget/SeekBarPreference;

    const-string v2, "tts_default_rate"

    iget v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    invoke-direct {p0, v2, v3}, Lcom/android/settings/tts/TextToSpeechSettings;->getSeekBarProgressFromValue(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    .line 298
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRatePref:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SeekBarPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 299
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRatePref:Lcom/android/settings/widget/SeekBarPreference;

    const-string v2, "tts_default_rate"

    const/16 v3, 0x258

    invoke-direct {p0, v2, v3}, Lcom/android/settings/tts/TextToSpeechSettings;->getSeekBarProgressFromValue(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    .line 301
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitchPref:Lcom/android/settings/widget/SeekBarPreference;

    const-string v2, "tts_default_pitch"

    iget v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitch:I

    .line 302
    invoke-direct {p0, v2, v3}, Lcom/android/settings/tts/TextToSpeechSettings;->getSeekBarProgressFromValue(Ljava/lang/String;I)I

    move-result v2

    .line 301
    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    .line 303
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitchPref:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SeekBarPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 304
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitchPref:Lcom/android/settings/widget/SeekBarPreference;

    const-string v2, "tts_default_pitch"

    const/16 v3, 0x190

    invoke-direct {p0, v2, v3}, Lcom/android/settings/tts/TextToSpeechSettings;->getSeekBarProgressFromValue(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    .line 306
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    .line 308
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 309
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitch:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    .line 312
    :cond_0
    const/4 v1, 0x0

    .line 313
    .local v1, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings/SettingsActivity;

    if-eqz v2, :cond_2

    .line 314
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    .line 320
    .end local v1
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 321
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/speech/tts/TtsEngines;->getEngineInfo(Ljava/lang/String;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v1

    .line 324
    .local v1, "info":Landroid/speech/tts/TextToSpeech$EngineInfo;
    const-string v2, "tts_engine_preference"

    invoke-virtual {p0, v2}, Lcom/android/settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 325
    .local v2, "mEnginePreference":Landroid/support/v7/preference/Preference;
    move-object v3, v2

    check-cast v3, Lcom/android/settings/widget/GearPreference;

    invoke-virtual {v3, p0}, Lcom/android/settings/widget/GearPreference;->setOnGearClickListener(Lcom/android/settings/widget/GearPreference$OnGearClickListener;)V

    .line 326
    iget-object v3, v1, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 329
    .end local v1
    .end local v2
    :cond_1
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->checkVoiceData(Ljava/lang/String;)V

    .line 330
    return-void

    .line 316
    .local v1, "activity":Lcom/android/settings/SettingsActivity;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "TextToSpeechSettings used outside a Settings"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private isNetworkRequiredForSynthesis()Z
    .locals 3

    .line 583
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->getFeatures(Ljava/util/Locale;)Ljava/util/Set;

    move-result-object v0

    .line 584
    .local v0, "features":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 585
    return v1

    .line 587
    :cond_0
    const-string v2, "networkTts"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "embeddedTts"

    .line 588
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    nop

    .line 587
    :cond_1
    return v1
.end method

.method public static synthetic lambda$onCreate$0(Lcom/android/settings/tts/TextToSpeechSettings;Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 177
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->speakSampleText()V

    return-void
.end method

.method public static synthetic lambda$onCreate$1(Lcom/android/settings/tts/TextToSpeechSettings;Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 181
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->resetTts()V

    return-void
.end method

.method private onSampleTextReceived(ILandroid/content/Intent;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .line 592
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getDefaultSampleString()Ljava/lang/String;

    move-result-object v0

    .line 594
    .local v0, "sample":Ljava/lang/String;
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 595
    if-eqz p2, :cond_0

    const-string v1, "sampleText"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 596
    const-string v1, "sampleText"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 603
    :cond_0
    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSampleText:Ljava/lang/String;

    .line 604
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSampleText:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 605
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    goto :goto_0

    .line 607
    :cond_1
    const-string v1, "TextToSpeechSettings"

    const-string v2, "Did not have a sample string for the requested language. Using default"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :goto_0
    return-void
.end method

.method private onVoiceDataIntegrityCheckDone(Landroid/content/Intent;)V
    .locals 4
    .param p1, "data"    # Landroid/content/Intent;

    .line 741
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    .line 743
    .local v0, "engine":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 744
    const-string v1, "TextToSpeechSettings"

    const-string v2, "Voice data check complete, but no engine bound"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    return-void

    .line 748
    :cond_0
    if-nez p1, :cond_1

    .line 749
    const-string v1, "TextToSpeechSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Engine failed voice data integrity check (null return)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 750
    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 749
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    return-void

    .line 754
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tts_default_synth"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 756
    const-string v1, "availableVoices"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mAvailableStrLocals:Ljava/util/List;

    .line 758
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mAvailableStrLocals:Ljava/util/List;

    if-nez v1, :cond_2

    .line 759
    const-string v1, "TextToSpeechSettings"

    const-string v2, "Voice data check complete, but no available voices found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mAvailableStrLocals:Ljava/util/List;

    .line 763
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->evaluateDefaultLocale()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 764
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getSampleText()V

    .line 766
    :cond_3
    return-void
.end method

.method private resetTts()V
    .locals 3

    .line 668
    const-string v0, "tts_default_rate"

    .line 669
    const/16 v1, 0x64

    invoke-direct {p0, v0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->getSeekBarProgressFromValue(Ljava/lang/String;I)I

    move-result v0

    .line 671
    .local v0, "speechRateSeekbarProgress":I
    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRatePref:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    .line 672
    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->updateSpeechRate(I)V

    .line 673
    const-string v2, "tts_default_pitch"

    .line 674
    invoke-direct {p0, v2, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->getSeekBarProgressFromValue(Ljava/lang/String;I)I

    move-result v1

    .line 676
    .local v1, "pitchSeekbarProgress":I
    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitchPref:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    .line 677
    invoke-direct {p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->updateSpeechPitchValue(I)V

    .line 678
    return-void
.end method

.method private setLocalePreference(I)V
    .locals 2
    .param p1, "index"    # I

    .line 550
    if-gez p1, :cond_0

    .line 551
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    const v1, 0x7f120ebc

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 555
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 557
    :goto_0
    return-void
.end method

.method private setTtsUtteranceProgressListener()V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_0

    .line 246
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v1, Lcom/android/settings/tts/TextToSpeechSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/tts/TextToSpeechSettings$2;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;)V

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    .line 262
    return-void
.end method

.method private speakSampleText()V
    .locals 5

    .line 612
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->isNetworkRequiredForSynthesis()Z

    move-result v0

    .line 613
    .local v0, "networkRequired":Z
    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    .line 614
    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v1

    if-ltz v1, :cond_0

    goto :goto_0

    .line 620
    :cond_0
    const-string v1, "TextToSpeechSettings"

    const-string v2, "Network required for sample synthesis for requested language"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->displayNetworkAlert()V

    goto :goto_1

    .line 615
    :cond_1
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 616
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "utteranceId"

    const-string v3, "Sample"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSampleText:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 619
    .end local v1
    nop

    .line 623
    :goto_1
    return-void
.end method

.method private updateDefaultLocalePref(Landroid/content/Intent;)V
    .locals 12
    .param p1, "data"    # Landroid/content/Intent;

    .line 491
    const-string v0, "availableVoices"

    .line 492
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 494
    .local v0, "availableLangs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "unavailableVoices"

    .line 495
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 497
    .local v1, "unavailableLangs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 501
    :cond_0
    const/4 v3, 0x0

    .line 502
    .local v3, "currentLocale":Ljava/util/Locale;
    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v5}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/speech/tts/TtsEngines;->isLocaleSetToDefaultForEngine(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 503
    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v5}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    .line 506
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    .line 507
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 508
    .local v4, "entryPairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/util/Locale;>;>;"
    move v5, v2

    .local v5, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 509
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/speech/tts/TtsEngines;->parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v6

    .line 510
    .local v6, "locale":Ljava/util/Locale;
    if-eqz v6, :cond_2

    .line 511
    new-instance v7, Landroid/util/Pair;

    invoke-virtual {v6}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    .end local v6
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 516
    .end local v5
    :cond_3
    new-instance v5, Lcom/android/settings/tts/TextToSpeechSettings$4;

    invoke-direct {v5, p0}, Lcom/android/settings/tts/TextToSpeechSettings$4;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 526
    iput v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSelectedLocaleIndex:I

    .line 527
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    new-array v5, v5, [Ljava/lang/CharSequence;

    .line 528
    .local v5, "entries":[Ljava/lang/CharSequence;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v7, v6

    new-array v7, v7, [Ljava/lang/CharSequence;

    .line 530
    .local v7, "entryValues":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f120ebd

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v2

    .line 531
    const-string v8, ""

    aput-object v8, v7, v2

    .line 533
    const/4 v2, 0x1

    .line 534
    .local v2, "i":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    .line 535
    .local v9, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/Locale;>;"
    iget-object v10, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/util/Locale;

    invoke-virtual {v10, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 536
    iput v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSelectedLocaleIndex:I

    .line 538
    :cond_4
    iget-object v10, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/CharSequence;

    aput-object v10, v5, v2

    .line 539
    add-int/lit8 v10, v2, 0x1

    .local v10, "i":I
    iget-object v11, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/util/Locale;

    invoke-virtual {v11}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v2

    .line 540
    .end local v2
    .end local v9
    nop

    .line 534
    move v2, v10

    goto :goto_1

    .line 542
    .end local v10
    .restart local v2
    :cond_5
    iget-object v8, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v8, v5}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 543
    iget-object v8, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v8, v7}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 544
    iget-object v8, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v8, v6}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 545
    iget v6, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSelectedLocaleIndex:I

    invoke-direct {p0, v6}, Lcom/android/settings/tts/TextToSpeechSettings;->setLocalePreference(I)V

    .line 546
    return-void

    .line 498
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    .end local v7
    :cond_6
    :goto_2
    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 499
    return-void
.end method

.method private updateLanguageTo(Ljava/util/Locale;)V
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;

    .line 644
    const/4 v0, -0x1

    .line 645
    .local v0, "selectedLocaleIndex":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 646
    .local v1, "localeString":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 647
    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 648
    move v0, v2

    .line 649
    goto :goto_2

    .line 646
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 653
    .end local v2
    :cond_2
    :goto_2
    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 654
    const-string v2, "TextToSpeechSettings"

    const-string v3, "updateLanguageTo called with unknown locale argument"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    return-void

    .line 657
    :cond_3
    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 658
    iput v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mSelectedLocaleIndex:I

    .line 660
    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Landroid/speech/tts/TtsEngines;->updateLocalePrefForEngine(Ljava/lang/String;Ljava/util/Locale;)V

    .line 663
    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz p1, :cond_4

    move-object v3, p1

    goto :goto_3

    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    :goto_3
    invoke-virtual {v2, v3}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 664
    return-void
.end method

.method private updateSpeechPitchValue(I)V
    .locals 3
    .param p1, "speechPitchSeekBarProgress"    # I

    .line 696
    const-string v0, "tts_default_pitch"

    invoke-direct {p0, v0, p1}, Lcom/android/settings/tts/TextToSpeechSettings;->getValueFromSeekBarProgress(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitch:I

    .line 698
    nop

    .line 699
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tts_default_pitch"

    iget v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitch:I

    .line 698
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 700
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitch:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    .line 706
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 704
    :catch_0
    move-exception v0

    .line 705
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "TextToSpeechSettings"

    const-string v2, "could not persist default TTS pitch setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 707
    .end local v0
    :goto_0
    return-void
.end method

.method private updateSpeechRate(I)V
    .locals 3
    .param p1, "speechRateSeekBarProgress"    # I

    .line 681
    const-string v0, "tts_default_rate"

    invoke-direct {p0, v0, p1}, Lcom/android/settings/tts/TextToSpeechSettings;->getValueFromSeekBarProgress(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    .line 683
    nop

    .line 684
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tts_default_rate"

    iget v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    .line 683
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 685
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 691
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 689
    :catch_0
    move-exception v0

    .line 690
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "TextToSpeechSettings"

    const-string v2, "could not persist default TTS rate setting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 692
    .end local v0
    :goto_0
    return-void
.end method

.method private updateWidgetState(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 711
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mActionButtons:Lcom/android/settings/widget/ActionButtonPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;

    .line 712
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRatePref:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SeekBarPreference;->setEnabled(Z)V

    .line 713
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitchPref:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SeekBarPreference;->setEnabled(Z)V

    .line 714
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 156
    const/16 v0, 0x5e

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 480
    const/16 v0, 0x7bf

    if-ne p1, v0, :cond_0

    .line 481
    invoke-direct {p0, p2, p3}, Lcom/android/settings/tts/TextToSpeechSettings;->onSampleTextReceived(ILandroid/content/Intent;)V

    goto :goto_0

    .line 482
    :cond_0
    const/16 v0, 0x7b9

    if-ne p1, v0, :cond_1

    .line 483
    invoke-direct {p0, p3}, Lcom/android/settings/tts/TextToSpeechSettings;->onVoiceDataIntegrityCheckDone(Landroid/content/Intent;)V

    .line 484
    if-eqz p2, :cond_1

    .line 485
    invoke-direct {p0, p3}, Lcom/android/settings/tts/TextToSpeechSettings;->updateDefaultLocalePref(Landroid/content/Intent;)V

    .line 488
    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 161
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 162
    const v0, 0x7f1500b3

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->addPreferencesFromResource(I)V

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 166
    new-instance v0, Landroid/speech/tts/TtsEngines;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 168
    const-string v0, "tts_default_lang"

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    .line 169
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 171
    const-string v0, "tts_default_pitch"

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/SeekBarPreference;

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultPitchPref:Lcom/android/settings/widget/SeekBarPreference;

    .line 172
    const-string v0, "tts_default_rate"

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/SeekBarPreference;

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRatePref:Lcom/android/settings/widget/SeekBarPreference;

    .line 174
    const-string v0, "action_buttons"

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ActionButtonPreference;

    .line 175
    const v1, 0x7f120ebe

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Text(I)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v0

    .line 176
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Positive(Z)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v0

    new-instance v2, Lcom/android/settings/tts/-$$Lambda$TextToSpeechSettings$-mqMfqhP2l_0b2lu0aliM8gSxIQ;

    invoke-direct {v2, p0}, Lcom/android/settings/tts/-$$Lambda$TextToSpeechSettings$-mqMfqhP2l_0b2lu0aliM8gSxIQ;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;)V

    .line 177
    invoke-virtual {v0, v2}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v0

    .line 178
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v0

    .line 179
    const v3, 0x7f120ec1

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Text(I)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v0

    .line 180
    invoke-virtual {v0, v2}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2Positive(Z)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v0

    new-instance v3, Lcom/android/settings/tts/-$$Lambda$TextToSpeechSettings$-PSeoELUhAn9aTlkws2o7dPjqCc;

    invoke-direct {v3, p0}, Lcom/android/settings/tts/-$$Lambda$TextToSpeechSettings$-PSeoELUhAn9aTlkws2o7dPjqCc;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;)V

    .line 181
    invoke-virtual {v0, v3}, Lcom/android/settings/widget/ActionButtonPreference;->setButton2OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v0

    .line 182
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ActionButtonPreference;->setButton1Enabled(Z)Lcom/android/settings/widget/ActionButtonPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mActionButtons:Lcom/android/settings/widget/ActionButtonPreference;

    .line 184
    if-nez p1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 186
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    new-array v3, v2, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 191
    :cond_0
    const-string v0, "locale_entries"

    .line 192
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 193
    .local v0, "entries":[Ljava/lang/CharSequence;
    const-string v3, "locale_entry_values"

    .line 194
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 195
    .local v3, "entryValues":[Ljava/lang/CharSequence;
    const-string v4, "locale_value"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 197
    .local v4, "value":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5, v0}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 198
    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5, v3}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 199
    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 200
    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    array-length v6, v0

    if-lez v6, :cond_2

    move v2, v1

    nop

    :cond_2
    invoke-virtual {v5, v2}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 203
    .end local v0
    .end local v3
    .end local v4
    :goto_1
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v0, v2, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 205
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->setTtsUtteranceProgressListener()V

    .line 206
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->initSettings()V

    .line 209
    invoke-virtual {p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->setRetainInstance(Z)V

    .line 210
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 266
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 267
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 271
    :cond_0
    return-void
.end method

.method public onGearClick(Lcom/android/settings/widget/GearPreference;)V
    .locals 4
    .param p1, "p"    # Lcom/android/settings/widget/GearPreference;

    .line 770
    const-string v0, "tts_engine_preference"

    invoke-virtual {p1}, Lcom/android/settings/widget/GearPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 771
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TtsEngines;->getEngineInfo(Ljava/lang/String;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v0

    .line 772
    .local v0, "info":Landroid/speech/tts/TextToSpeech$EngineInfo;
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    iget-object v2, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/speech/tts/TtsEngines;->getSettingsIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 773
    .local v1, "settingsIntent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 774
    invoke-virtual {p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 776
    :cond_0
    const-string v2, "TextToSpeechSettings"

    const-string v3, "settingsIntent is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    .end local v0
    .end local v1
    :cond_1
    :goto_0
    return-void
.end method

.method public onInitEngine(I)V
    .locals 2
    .param p1, "status"    # I

    .line 362
    if-nez p1, :cond_0

    .line 364
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->checkDefaultLocale()V

    .line 365
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/tts/TextToSpeechSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/tts/TextToSpeechSettings$3;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;)V

    .line 366
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 378
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    .line 380
    :goto_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .line 627
    const-string v0, "tts_default_rate"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 628
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->updateSpeechRate(I)V

    goto :goto_1

    .line 629
    :cond_0
    const-string v0, "tts_default_pitch"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 630
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->updateSpeechPitchValue(I)V

    goto :goto_1

    .line 631
    :cond_1
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v0, :cond_3

    .line 632
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 633
    .local v0, "localeString":Ljava/lang/String;
    nop

    .line 634
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 635
    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v2, v0}, Landroid/speech/tts/TtsEngines;->parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    goto :goto_0

    .line 636
    :cond_2
    const/4 v2, 0x0

    .line 633
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/settings/tts/TextToSpeechSettings;->updateLanguageTo(Ljava/util/Locale;)V

    .line 637
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->checkDefaultLocale()V

    .line 638
    return v1

    .line 640
    .end local v0
    :cond_3
    :goto_1
    return v1
.end method

.method public onResume()V
    .locals 4

    .line 214
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 216
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 225
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TextToSpeechSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error shutting down TTS engine"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .end local v0
    :goto_0
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 227
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->setTtsUtteranceProgressListener()V

    .line 228
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->initSettings()V

    goto :goto_1

    .line 232
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 233
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    const-string v2, "tts_default_pitch"

    const/16 v3, 0x64

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    .line 237
    .end local v0
    :goto_1
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getDefaultLanguage()Ljava/util/Locale;

    move-result-object v0

    .line 238
    .local v0, "ttsDefaultLocale":Ljava/util/Locale;
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentDefaultLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 239
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    .line 240
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->checkDefaultLocale()V

    .line 242
    :cond_2
    return-void

    .line 217
    .end local v0
    :cond_3
    :goto_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 275
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 278
    const-string v0, "locale_entries"

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    .line 279
    invoke-virtual {v1}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 278
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 280
    const-string v0, "locale_entry_values"

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    .line 281
    invoke-virtual {v1}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 280
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 282
    const-string v0, "locale_value"

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mLocalePreference:Landroid/support/v7/preference/ListPreference;

    .line 283
    invoke-virtual {v1}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 282
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 284
    return-void
.end method
