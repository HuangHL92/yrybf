package cc.mrbird.febs.common.utils;

import net.sourceforge.pinyin4j.PinyinHelper;
import net.sourceforge.pinyin4j.format.HanyuPinyinOutputFormat;
import net.sourceforge.pinyin4j.format.HanyuPinyinToneType;
import net.sourceforge.pinyin4j.format.HanyuPinyinVCharType;
import net.sourceforge.pinyin4j.format.exception.BadHanyuPinyinOutputFormatCombination;

/**
 * 中文汉字转拼音工具类
 *
 * @since 2017/5/10
 */
public class PinyinUtil {

    public static void main(String[] args) throws BadHanyuPinyinOutputFormatCombination {

        String str = PinyinUtil.getPinYinHeadChar("小超人");
        System.out.println(str);

//        String[] strs = PinyinUtil.getPinYin('空');
//        for (String str : strs) {
//            System.out.println(str);
//        }

    }

    /**
     * 传入中文获取首字母 （小写）
     * 如：小超人 -> xcr
     *
     * @param str 需要转化的中文字符串
     * @return
     */
    public static String getPinYinHeadChar(String str) {
        String convert = "";
        for (int j = 0; j < str.length(); j++) {
            char word = str.charAt(j);
            String[] pinyinArray = PinyinHelper.toHanyuPinyinStringArray(word);
            if (pinyinArray != null) {
                convert += pinyinArray[0].charAt(0);
            } else {
                convert += word;
            }
        }
        return convert;
    }


    /**
     * 获取中文字的拼音（多音字，拼音后的数字代表第几声）
     * 如：空 -> kong1 kong4
     *
     * @param word
     * @return
     */
    public static String[] getPinYin(char word) {
        return PinyinHelper.toHanyuPinyinStringArray(word);
    }

    /**
     * 获取中文字的拼音（多音字，拼音上的符号代表第几声）
     * 如：空 -> kōng kòng
     *
     * @param word
     * @return
     */
    public static String[] getPinYinWithToneMark(char word) throws BadHanyuPinyinOutputFormatCombination {
        HanyuPinyinOutputFormat format = new HanyuPinyinOutputFormat();
        format.setToneType(HanyuPinyinToneType.WITH_TONE_MARK);
        format.setVCharType(HanyuPinyinVCharType.WITH_U_UNICODE);
        return PinyinHelper.toHanyuPinyinStringArray(word, format);
    }


}