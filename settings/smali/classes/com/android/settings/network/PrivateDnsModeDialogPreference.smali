.class public Lcom/android/settings/network/PrivateDnsModeDialogPreference;
.super Lcom/android/settingslib/CustomDialogPreference;
.source "PrivateDnsModeDialogPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# static fields
.field private static final ADDRESS_FAMILIES:[I

.field static final HOSTNAME_KEY:Ljava/lang/String; = "private_dns_specifier"

.field static final MODE_KEY:Ljava/lang/String; = "private_dns_mode"

.field private static final PRIVATE_DNS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mEditText:Landroid/widget/EditText;

.field mMode:Ljava/lang/String;

.field mRadioGroup:Landroid/widget/RadioGroup;

.field private final mUrlLinkInfo:Lcom/android/settings/utils/AnnotationSpan$LinkInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->PRIVATE_DNS_MAP:Ljava/util/Map;

    .line 70
    sget-object v0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->PRIVATE_DNS_MAP:Ljava/util/Map;

    const-string v1, "off"

    const v2, 0x7f0a031b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->PRIVATE_DNS_MAP:Ljava/util/Map;

    const-string v1, "opportunistic"

    const v2, 0x7f0a031c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->PRIVATE_DNS_MAP:Ljava/util/Map;

    const-string v1, "hostname"

    const v2, 0x7f0a031d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [I

    sget v1, Landroid/system/OsConstants;->AF_INET:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->ADDRESS_FAMILIES:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 102
    invoke-direct {p0, p1}, Lcom/android/settingslib/CustomDialogPreference;-><init>(Landroid/content/Context;)V

    .line 118
    new-instance v0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    const-string v1, "url"

    sget-object v2, Lcom/android/settings/network/-$$Lambda$PrivateDnsModeDialogPreference$I1bK8FTmQSNCc-qXqZ0usMONEsU;->INSTANCE:Lcom/android/settings/network/-$$Lambda$PrivateDnsModeDialogPreference$I1bK8FTmQSNCc-qXqZ0usMONEsU;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mUrlLinkInfo:Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 118
    new-instance v0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    const-string v1, "url"

    sget-object v2, Lcom/android/settings/network/-$$Lambda$PrivateDnsModeDialogPreference$I1bK8FTmQSNCc-qXqZ0usMONEsU;->INSTANCE:Lcom/android/settings/network/-$$Lambda$PrivateDnsModeDialogPreference$I1bK8FTmQSNCc-qXqZ0usMONEsU;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mUrlLinkInfo:Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    new-instance v0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    const-string v1, "url"

    sget-object v2, Lcom/android/settings/network/-$$Lambda$PrivateDnsModeDialogPreference$I1bK8FTmQSNCc-qXqZ0usMONEsU;->INSTANCE:Lcom/android/settings/network/-$$Lambda$PrivateDnsModeDialogPreference$I1bK8FTmQSNCc-qXqZ0usMONEsU;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mUrlLinkInfo:Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 115
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 118
    new-instance v0, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    const-string v1, "url"

    sget-object v2, Lcom/android/settings/network/-$$Lambda$PrivateDnsModeDialogPreference$I1bK8FTmQSNCc-qXqZ0usMONEsU;->INSTANCE:Lcom/android/settings/network/-$$Lambda$PrivateDnsModeDialogPreference$I1bK8FTmQSNCc-qXqZ0usMONEsU;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mUrlLinkInfo:Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    .line 116
    return-void
.end method

.method public static getHostnameFromSettings(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 91
    const-string v0, "private_dns_specifier"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getModeFromSettings(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .line 83
    const-string v0, "private_dns_mode"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "mode":Ljava/lang/String;
    sget-object v1, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->PRIVATE_DNS_MAP:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    const-string v1, "private_dns_default_mode"

    invoke-static {p0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    :cond_0
    sget-object v1, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->PRIVATE_DNS_MAP:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    const-string v1, "opportunistic"

    :goto_0
    return-object v1
.end method

.method private getSaveButton()Landroid/widget/Button;
    .locals 2

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 225
    .local v0, "dialog":Landroid/app/AlertDialog;
    if-nez v0, :cond_0

    .line 226
    const/4 v1, 0x0

    return-object v1

    .line 228
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    return-object v1
.end method

.method private isWeaklyValidatedHostname(Ljava/lang/String;)Z
    .locals 7
    .param p1, "hostname"    # Ljava/lang/String;

    .line 209
    const-string v0, "^[a-zA-Z0-9_.-]+$"

    .line 210
    .local v0, "WEAK_HOSTNAME_REGEX":Ljava/lang/String;
    const-string v1, "^[a-zA-Z0-9_.-]+$"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 211
    return v2

    .line 214
    :cond_0
    sget-object v1, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->ADDRESS_FAMILIES:[I

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    aget v5, v1, v4

    .line 215
    .local v5, "address_family":I
    invoke-static {v5, p1}, Landroid/system/Os;->inet_pton(ILjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 216
    return v2

    .line 214
    .end local v5
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 220
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method static synthetic lambda$new$0(Landroid/view/View;)V
    .locals 6
    .param p0, "widget"    # Landroid/view/View;

    .line 120
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 121
    .local v0, "context":Landroid/content/Context;
    nop

    .line 122
    const v1, 0x7f1206a8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 124
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 126
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/view/View;->startActivityForResult(Landroid/content/Intent;I)V

    .line 129
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v2

    .line 128
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "PrivateDnsModeDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity was not found for intent, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .end local v2
    :cond_0
    :goto_0
    return-void
.end method

.method private updateDialogInfo()V
    .locals 3

    .line 232
    const-string v0, "hostname"

    iget-object v1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 233
    .local v0, "modeProvider":Z
    iget-object v1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 236
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->getSaveButton()Landroid/widget/Button;

    move-result-object v1

    .line 237
    .local v1, "saveButton":Landroid/widget/Button;
    if-eqz v1, :cond_2

    .line 238
    if-eqz v0, :cond_1

    .line 239
    iget-object v2, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->isWeaklyValidatedHostname(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 240
    :cond_1
    const/4 v2, 0x1

    .line 238
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 242
    :cond_2
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .line 203
    invoke-direct {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->updateDialogInfo()V

    .line 204
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 195
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 136
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 138
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->getModeFromSettings(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:Ljava/lang/String;

    .line 140
    const v2, 0x7f0a031e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mEditText:Landroid/widget/EditText;

    .line 141
    iget-object v2, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 142
    iget-object v2, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mEditText:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->getHostnameFromSettings(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 144
    const v2, 0x7f0a031f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 145
    iget-object v2, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 146
    iget-object v2, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mRadioGroup:Landroid/widget/RadioGroup;

    sget-object v3, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->PRIVATE_DNS_MAP:Ljava/util/Map;

    iget-object v4, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:Ljava/lang/String;

    const v5, 0x7f0a031c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 148
    const v2, 0x7f0a031a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 149
    .local v2, "helpTextView":Landroid/widget/TextView;
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 150
    nop

    .line 151
    const v3, 0x7f1206a8

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 152
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 150
    invoke-static {v0, v3, v4}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 153
    .local v3, "helpIntent":Landroid/content/Intent;
    new-instance v4, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    const-string v5, "url"

    invoke-direct {v4, v0, v5, v3}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 155
    .local v4, "linkInfo":Lcom/android/settings/utils/AnnotationSpan$LinkInfo;
    invoke-virtual {v4}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->isActionable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 156
    const v5, 0x7f120a59

    .line 157
    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    .line 156
    invoke-static {v5, v6}, Lcom/android/settings/utils/AnnotationSpan;->linkify(Ljava/lang/CharSequence;[Lcom/android/settings/utils/AnnotationSpan$LinkInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .line 179
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 187
    :pswitch_0    # 0x7f0a031d
    const-string v0, "hostname"

    iput-object v0, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:Ljava/lang/String;

    goto :goto_0

    .line 184
    :pswitch_1    # 0x7f0a031c
    const-string v0, "opportunistic"

    iput-object v0, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:Ljava/lang/String;

    .line 185
    goto :goto_0

    .line 181
    :pswitch_2    # 0x7f0a031b
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:Ljava/lang/String;

    .line 182
    nop

    .line 190
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->updateDialogInfo()V

    .line 191
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a031b
        :pswitch_2    # 0x7f0a031b
        :pswitch_1    # 0x7f0a031c
        :pswitch_0    # 0x7f0a031d
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 163
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 165
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:Ljava/lang/String;

    const-string v2, "hostname"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "private_dns_specifier"

    iget-object v3, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mEditText:Landroid/widget/EditText;

    .line 168
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 167
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 171
    :cond_0
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    const/16 v2, 0x4e1

    iget-object v3, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:Ljava/lang/String;

    const/4 v4, 0x0

    new-array v4, v4, [Landroid/util/Pair;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 173
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "private_dns_mode"

    iget-object v3, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 175
    .end local v0
    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 199
    return-void
.end method
