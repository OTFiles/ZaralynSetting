.class public Lcom/android/settings/custom/EditFilterName;
.super Ljava/lang/Object;
.source "EditFilterName.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/custom/EditFilterName$EditFilterChangeListener;
    }
.end annotation


# instance fields
.field before_length:I

.field cursor_start:I

.field private mEditText:Landroid/widget/EditText;

.field private mMaxLength:I

.field private mStateListener:Lcom/android/settings/custom/EditFilterName$EditFilterChangeListener;

.field private mWatcherListener:Landroid/text/TextWatcher;

.field private modifyBefore:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 1
    .param p1, "editText"    # Landroid/widget/EditText;

    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/settings/custom/EditFilterName;-><init>(Lcom/android/settings/custom/EditFilterName$EditFilterChangeListener;Landroid/widget/EditText;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/custom/EditFilterName$EditFilterChangeListener;Landroid/widget/EditText;)V
    .locals 2
    .param p1, "stateListener"    # Lcom/android/settings/custom/EditFilterName$EditFilterChangeListener;
    .param p2, "editText"    # Landroid/widget/EditText;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/custom/EditFilterName;->mWatcherListener:Landroid/text/TextWatcher;

    .line 23
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/custom/EditFilterName;->cursor_start:I

    .line 31
    iput-object p2, p0, Lcom/android/settings/custom/EditFilterName;->mEditText:Landroid/widget/EditText;

    .line 32
    iget-object v1, p0, Lcom/android/settings/custom/EditFilterName;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0, v1}, Lcom/android/settings/custom/EditFilterName;->getMaxLength(Landroid/widget/EditText;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/custom/EditFilterName;->mMaxLength:I

    .line 33
    iput-object p1, p0, Lcom/android/settings/custom/EditFilterName;->mStateListener:Lcom/android/settings/custom/EditFilterName$EditFilterChangeListener;

    .line 34
    iput-object v0, p0, Lcom/android/settings/custom/EditFilterName;->mWatcherListener:Landroid/text/TextWatcher;

    .line 35
    return-void
.end method

.method public static isValidName(Ljava/lang/String;)Z
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .line 186
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 187
    return v1

    .line 189
    :cond_0
    move v0, v1

    .local v0, "inum":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 190
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 191
    .local v2, "value":C
    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 192
    const/4 v1, 0x1

    return v1

    .line 189
    .end local v2
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    .end local v0
    :cond_2
    return v1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 9
    .param p1, "sedit"    # Landroid/text/Editable;

    .line 132
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/custom/EditFilterName;->stringFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "formatStr":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/android/settings/custom/EditFilterName;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v1, p0, Lcom/android/settings/custom/EditFilterName;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    move-object p1, v1

    .line 137
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    iget v2, p0, Lcom/android/settings/custom/EditFilterName;->mMaxLength:I

    if-gt v1, v2, :cond_0

    .line 138
    iget-object v1, p0, Lcom/android/settings/custom/EditFilterName;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 142
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    .line 141
    :catch_0
    move-exception v1

    .line 144
    :goto_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    .line 146
    .local v1, "after_length":I
    iget v2, p0, Lcom/android/settings/custom/EditFilterName;->mMaxLength:I

    if-le v1, v2, :cond_1

    .line 148
    iget v2, p0, Lcom/android/settings/custom/EditFilterName;->mMaxLength:I

    sub-int v2, v1, v2

    .line 150
    .local v2, "d_value":I
    iget v3, p0, Lcom/android/settings/custom/EditFilterName;->before_length:I

    sub-int v3, v1, v3

    .line 151
    .local v3, "d_num":I
    iget v4, p0, Lcom/android/settings/custom/EditFilterName;->cursor_start:I

    sub-int v5, v3, v2

    add-int/2addr v4, v5

    .line 152
    .local v4, "st":I
    iget v5, p0, Lcom/android/settings/custom/EditFilterName;->cursor_start:I

    add-int/2addr v5, v3

    .line 154
    .local v5, "en":I
    invoke-interface {p1, v4, v5}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    move-result-object v6

    .line 156
    .local v6, "s_new":Landroid/text/Editable;
    iget-object v7, p0, Lcom/android/settings/custom/EditFilterName;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v7, p0, Lcom/android/settings/custom/EditFilterName;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v7, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 163
    .end local v2
    .end local v3
    .end local v4
    .end local v5
    .end local v6
    :cond_1
    iget v2, p0, Lcom/android/settings/custom/EditFilterName;->before_length:I

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/custom/EditFilterName;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 164
    iget-object v2, p0, Lcom/android/settings/custom/EditFilterName;->mStateListener:Lcom/android/settings/custom/EditFilterName$EditFilterChangeListener;

    if-eqz v2, :cond_3

    .line 165
    iget-object v2, p0, Lcom/android/settings/custom/EditFilterName;->mStateListener:Lcom/android/settings/custom/EditFilterName$EditFilterChangeListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/settings/custom/EditFilterName$EditFilterChangeListener;->exchangeEditContentLengthExchange(Z)V

    goto :goto_1

    .line 167
    :cond_2
    iget v2, p0, Lcom/android/settings/custom/EditFilterName;->before_length:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/custom/EditFilterName;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 168
    iget-object v2, p0, Lcom/android/settings/custom/EditFilterName;->mStateListener:Lcom/android/settings/custom/EditFilterName$EditFilterChangeListener;

    if-eqz v2, :cond_3

    .line 169
    iget-object v2, p0, Lcom/android/settings/custom/EditFilterName;->mStateListener:Lcom/android/settings/custom/EditFilterName$EditFilterChangeListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/settings/custom/EditFilterName$EditFilterChangeListener;->exchangeEditContentLengthExchange(Z)V

    .line 173
    :cond_3
    :goto_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 46
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/custom/EditFilterName;->modifyBefore:Ljava/lang/String;

    .line 47
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/android/settings/custom/EditFilterName;->before_length:I

    .line 48
    return-void
.end method

.method public emojiFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/regex/PatternSyntaxException;
        }
    .end annotation

    .line 204
    const-string v0, "[\ud83c\udc00-\ud83c\udfff]|[\ud83d\udc00-\ud83d\udfff]|[\u2600-\u27ff]"

    const/16 v1, 0x42

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 206
    .local v0, "emoji":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 207
    .local v1, "emojiMatcher":Ljava/util/regex/Matcher;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getMaxLength(Landroid/widget/EditText;)I
    .locals 13
    .param p1, "editText"    # Landroid/widget/EditText;

    .line 230
    const/16 v0, 0x400

    .line 232
    .local v0, "length":I
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v1

    .line 233
    .local v1, "inputFilters":[Landroid/text/InputFilter;
    array-length v2, v1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v3, 0x0

    move v4, v0

    move v0, v3

    .end local v0
    .local v4, "length":I
    :goto_0
    if-ge v0, v2, :cond_3

    :try_start_1
    aget-object v5, v1, v0

    .line 234
    .local v5, "filter":Landroid/text/InputFilter;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 235
    .local v6, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.text.InputFilter$LengthFilter"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 236
    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    .line 237
    .local v7, "f":[Ljava/lang/reflect/Field;
    array-length v8, v7

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v9, v4

    move v4, v3

    .end local v4
    .local v9, "length":I
    :goto_1
    if-ge v4, v8, :cond_1

    :try_start_2
    aget-object v10, v7, v4

    .line 238
    .local v10, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "mMax"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 239
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 240
    invoke-virtual {v10, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v9, v11

    .line 237
    .end local v10
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 245
    .end local v1
    .end local v5
    .end local v6
    .end local v7
    :catch_0
    move-exception v0

    move v4, v9

    goto :goto_2

    .line 233
    .restart local v1
    :cond_1
    move v4, v9

    .end local v9
    .restart local v4
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    .end local v1
    :catch_1
    move-exception v0

    goto :goto_2

    .line 247
    :cond_3
    goto :goto_3

    .line 245
    .end local v4
    .restart local v0
    :catch_2
    move-exception v1

    move v4, v0

    move-object v0, v1

    .line 246
    .local v0, "e":Ljava/lang/Exception;
    .restart local v4
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 248
    .end local v0
    :goto_3
    iput v4, p0, Lcom/android/settings/custom/EditFilterName;->mMaxLength:I

    .line 249
    return v4
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 56
    iput p2, p0, Lcom/android/settings/custom/EditFilterName;->cursor_start:I

    .line 128
    return-void
.end method

.method public stringFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/regex/PatternSyntaxException;
        }
    .end annotation

    .line 217
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    invoke-virtual {p0, p1}, Lcom/android/settings/custom/EditFilterName;->emojiFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 219
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    const-string v0, "[%#&/\\:*?<>|\"\n\t\r]"

    .line 221
    .local v0, "regEx":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 222
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 223
    .local v2, "m":Ljava/util/regex/Matcher;
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 226
    .end local v0
    .end local v1
    .end local v2
    :cond_0
    return-object p1
.end method
