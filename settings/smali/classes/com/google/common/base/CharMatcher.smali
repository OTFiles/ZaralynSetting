.class public abstract Lcom/google/common/base/CharMatcher;
.super Ljava/lang/Object;
.source "CharMatcher.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/CharMatcher$FastMatcher;,
        Lcom/google/common/base/CharMatcher$Or;,
        Lcom/google/common/base/CharMatcher$RangesMatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# static fields
.field public static final ANY:Lcom/google/common/base/CharMatcher;

.field public static final ASCII:Lcom/google/common/base/CharMatcher;

.field public static final BREAKING_WHITESPACE:Lcom/google/common/base/CharMatcher;

.field public static final DIGIT:Lcom/google/common/base/CharMatcher;

.field public static final INVISIBLE:Lcom/google/common/base/CharMatcher;

.field public static final JAVA_DIGIT:Lcom/google/common/base/CharMatcher;

.field public static final JAVA_ISO_CONTROL:Lcom/google/common/base/CharMatcher;

.field public static final JAVA_LETTER:Lcom/google/common/base/CharMatcher;

.field public static final JAVA_LETTER_OR_DIGIT:Lcom/google/common/base/CharMatcher;

.field public static final JAVA_LOWER_CASE:Lcom/google/common/base/CharMatcher;

.field public static final JAVA_UPPER_CASE:Lcom/google/common/base/CharMatcher;

.field private static final NINES:Ljava/lang/String;

.field public static final NONE:Lcom/google/common/base/CharMatcher;

.field public static final SINGLE_WIDTH:Lcom/google/common/base/CharMatcher;

.field public static final WHITESPACE:Lcom/google/common/base/CharMatcher;

.field static final WHITESPACE_SHIFT:I


# instance fields
.field final description:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 67
    new-instance v0, Lcom/google/common/base/CharMatcher$1;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$1;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher;->BREAKING_WHITESPACE:Lcom/google/common/base/CharMatcher;

    .line 100
    const-string v0, "CharMatcher.ASCII"

    const/16 v1, 0x7f

    const/4 v2, 0x0

    invoke-static {v2, v1, v0}, Lcom/google/common/base/CharMatcher;->inRange(CCLjava/lang/String;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/CharMatcher;->ASCII:Lcom/google/common/base/CharMatcher;

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "0\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 139
    .local v0, "builder":Ljava/lang/StringBuilder;
    move v3, v2

    .local v3, "i":I
    :goto_0
    const-string v4, "0\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 140
    const-string v4, "0\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10"

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, 0x9

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 142
    .end local v3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/google/common/base/CharMatcher;->NINES:Ljava/lang/String;

    .line 150
    .end local v0
    new-instance v0, Lcom/google/common/base/CharMatcher$RangesMatcher;

    const-string v3, "CharMatcher.DIGIT"

    const-string v4, "0\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10"

    .line 151
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    sget-object v5, Lcom/google/common/base/CharMatcher;->NINES:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/google/common/base/CharMatcher$RangesMatcher;-><init>(Ljava/lang/String;[C[C)V

    sput-object v0, Lcom/google/common/base/CharMatcher;->DIGIT:Lcom/google/common/base/CharMatcher;

    .line 158
    new-instance v0, Lcom/google/common/base/CharMatcher$2;

    const-string v3, "CharMatcher.JAVA_DIGIT"

    invoke-direct {v0, v3}, Lcom/google/common/base/CharMatcher$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/base/CharMatcher;->JAVA_DIGIT:Lcom/google/common/base/CharMatcher;

    .line 169
    new-instance v0, Lcom/google/common/base/CharMatcher$3;

    const-string v3, "CharMatcher.JAVA_LETTER"

    invoke-direct {v0, v3}, Lcom/google/common/base/CharMatcher$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/base/CharMatcher;->JAVA_LETTER:Lcom/google/common/base/CharMatcher;

    .line 179
    new-instance v0, Lcom/google/common/base/CharMatcher$4;

    const-string v3, "CharMatcher.JAVA_LETTER_OR_DIGIT"

    invoke-direct {v0, v3}, Lcom/google/common/base/CharMatcher$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/base/CharMatcher;->JAVA_LETTER_OR_DIGIT:Lcom/google/common/base/CharMatcher;

    .line 190
    new-instance v0, Lcom/google/common/base/CharMatcher$5;

    const-string v3, "CharMatcher.JAVA_UPPER_CASE"

    invoke-direct {v0, v3}, Lcom/google/common/base/CharMatcher$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/base/CharMatcher;->JAVA_UPPER_CASE:Lcom/google/common/base/CharMatcher;

    .line 201
    new-instance v0, Lcom/google/common/base/CharMatcher$6;

    const-string v3, "CharMatcher.JAVA_LOWER_CASE"

    invoke-direct {v0, v3}, Lcom/google/common/base/CharMatcher$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/base/CharMatcher;->JAVA_LOWER_CASE:Lcom/google/common/base/CharMatcher;

    .line 212
    const/16 v0, 0x1f    # '\u001f'

    .line 213
    invoke-static {v2, v0}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const/16 v2, 0x9f    # '\u009f'

    .line 214
    invoke-static {v1, v2}, Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    const-string v1, "CharMatcher.JAVA_ISO_CONTROL"

    .line 215
    invoke-virtual {v0, v1}, Lcom/google/common/base/CharMatcher;->withToString(Ljava/lang/String;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/CharMatcher;->JAVA_ISO_CONTROL:Lcom/google/common/base/CharMatcher;

    .line 222
    new-instance v0, Lcom/google/common/base/CharMatcher$RangesMatcher;

    const-string v1, "CharMatcher.INVISIBLE"

    const-string v2, "\u0000\u007f\u00ad\u0600\u061c\u06dd\u070f\u1680\u180e\u2000\u2028\u205f\u2066\u2067\u2068\u2069\u206a\u3000\ud800\ufeff\ufff9\ufffa"

    .line 224
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const-string v3, " \u00a0\u00ad\u0604\u061c\u06dd\u070f\u1680\u180e\u200f\u202f\u2064\u2066\u2067\u2068\u2069\u206f\u3000\uf8ff\ufeff\ufff9\ufffb"

    .line 226
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/base/CharMatcher$RangesMatcher;-><init>(Ljava/lang/String;[C[C)V

    sput-object v0, Lcom/google/common/base/CharMatcher;->INVISIBLE:Lcom/google/common/base/CharMatcher;

    .line 247
    new-instance v0, Lcom/google/common/base/CharMatcher$RangesMatcher;

    const-string v1, "CharMatcher.SINGLE_WIDTH"

    const-string v2, "\u0000\u05be\u05d0\u05f3\u0600\u0750\u0e00\u1e00\u2100\ufb50\ufe70\uff61"

    .line 248
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const-string v3, "\u04f9\u05be\u05ea\u05f4\u06ff\u077f\u0e7f\u20af\u213a\ufdff\ufeff\uffdc"

    .line 249
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/base/CharMatcher$RangesMatcher;-><init>(Ljava/lang/String;[C[C)V

    sput-object v0, Lcom/google/common/base/CharMatcher;->SINGLE_WIDTH:Lcom/google/common/base/CharMatcher;

    .line 252
    new-instance v0, Lcom/google/common/base/CharMatcher$7;

    const-string v1, "CharMatcher.ANY"

    invoke-direct {v0, v1}, Lcom/google/common/base/CharMatcher$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/base/CharMatcher;->ANY:Lcom/google/common/base/CharMatcher;

    .line 328
    new-instance v0, Lcom/google/common/base/CharMatcher$8;

    const-string v1, "CharMatcher.NONE"

    invoke-direct {v0, v1}, Lcom/google/common/base/CharMatcher$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/base/CharMatcher;->NONE:Lcom/google/common/base/CharMatcher;

    .line 1358
    const-string v0, "\u2002\u3000\r\u0085\u200a\u2005\u2000\u3000\u2029\u000b\u3000\u2008\u2003\u205f\u3000\u1680\t \u2006\u2001\u202f\u00a0\u000c\u2009\u3000\u2004\u3000\u3000\u2028\n\u2007\u3000"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    sput v0, Lcom/google/common/base/CharMatcher;->WHITESPACE_SHIFT:I

    .line 1371
    new-instance v0, Lcom/google/common/base/CharMatcher$15;

    const-string v1, "WHITESPACE"

    invoke-direct {v0, v1}, Lcom/google/common/base/CharMatcher$15;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/base/CharMatcher;->WHITESPACE:Lcom/google/common/base/CharMatcher;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 609
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/CharMatcher;->description:Ljava/lang/String;

    .line 610
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    iput-object p1, p0, Lcom/google/common/base/CharMatcher;->description:Ljava/lang/String;

    .line 602
    return-void
.end method

.method public static inRange(CC)Lcom/google/common/base/CharMatcher;
    .locals 2
    .param p0, "startInclusive"    # C
    .param p1, "endInclusive"    # C

    .line 550
    if-lt p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CharMatcher.inRange(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    invoke-static {p0}, Lcom/google/common/base/CharMatcher;->showCharacter(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    invoke-static {p1}, Lcom/google/common/base/CharMatcher;->showCharacter(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, "description":Ljava/lang/String;
    invoke-static {p0, p1, v0}, Lcom/google/common/base/CharMatcher;->inRange(CCLjava/lang/String;)Lcom/google/common/base/CharMatcher;

    move-result-object v1

    return-object v1
.end method

.method static inRange(CCLjava/lang/String;)Lcom/google/common/base/CharMatcher;
    .locals 1
    .param p0, "startInclusive"    # C
    .param p1, "endInclusive"    # C
    .param p2, "description"    # Ljava/lang/String;

    .line 559
    new-instance v0, Lcom/google/common/base/CharMatcher$13;

    invoke-direct {v0, p2, p0, p1}, Lcom/google/common/base/CharMatcher$13;-><init>(Ljava/lang/String;CC)V

    return-object v0
.end method

.method private static showCharacter(C)Ljava/lang/String;
    .locals 5
    .param p0, "c"    # C

    .line 229
    const-string v0, "0123456789ABCDEF"

    .line 230
    .local v0, "hex":Ljava/lang/String;
    const/4 v1, 0x6

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    .line 231
    .local v1, "tmp":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 232
    rsub-int/lit8 v3, v2, 0x5

    and-int/lit8 v4, p0, 0xf

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v1, v3

    .line 233
    shr-int/lit8 v3, p0, 0x4

    int-to-char p0, v3

    .line 231
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 235
    .end local v2
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :array_0
    .array-data 2
        0x5cS    # '\'
        0x75S    # 'u'
        0x0S
        0x0S
        0x0S
        0x0S
    .end array-data
.end method


# virtual methods
.method public apply(Ljava/lang/Character;)Z
    .locals 1
    .param p1, "character"    # Ljava/lang/Character;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1340
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 55
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p0, p1}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public abstract matches(C)Z
.end method

.method public or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .locals 2
    .param p1, "other"    # Lcom/google/common/base/CharMatcher;

    .line 720
    new-instance v0, Lcom/google/common/base/CharMatcher$Or;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/base/CharMatcher;

    invoke-direct {v0, p0, v1}, Lcom/google/common/base/CharMatcher$Or;-><init>(Lcom/google/common/base/CharMatcher;Lcom/google/common/base/CharMatcher;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1349
    iget-object v0, p0, Lcom/google/common/base/CharMatcher;->description:Ljava/lang/String;

    return-object v0
.end method

.method withToString(Ljava/lang/String;)Lcom/google/common/base/CharMatcher;
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .line 775
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
