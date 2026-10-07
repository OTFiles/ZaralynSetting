.class public Lcom/android/settings/search/indexing/IndexData;
.super Ljava/lang/Object;
.source "IndexData.java"


# static fields
.field private static final REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public final updatedSummaryOn:Ljava/lang/String;

.field public final updatedTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    .line 67
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/settings/search/indexing/IndexData;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    .line 66
    return-void
.end method

.method public static normalizeJapaneseString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "input"    # Ljava/lang/String;

    .line 143
    if-eqz p0, :cond_0

    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 144
    .local v0, "nohyphen":Ljava/lang/String;
    :goto_0
    sget-object v1, Ljava/text/Normalizer$Form;->NFKD:Ljava/text/Normalizer$Form;

    invoke-static {v0, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "normalized":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 146
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 147
    .local v3, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 148
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 150
    .local v5, "c":C
    const/16 v6, 0x3041

    if-lt v5, v6, :cond_1

    const/16 v6, 0x3096

    if-gt v5, v6, :cond_1

    .line 151
    add-int/lit16 v6, v5, -0x3041

    add-int/lit16 v6, v6, 0x30a1

    int-to-char v6, v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 153
    :cond_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 147
    .end local v5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 157
    .end local v4
    :cond_2
    sget-object v4, Lcom/android/settings/search/indexing/IndexData;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/search/indexing/IndexData;->updatedTitle:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/search/indexing/IndexData;->updatedSummaryOn:Ljava/lang/String;

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    return-object v0
.end method
