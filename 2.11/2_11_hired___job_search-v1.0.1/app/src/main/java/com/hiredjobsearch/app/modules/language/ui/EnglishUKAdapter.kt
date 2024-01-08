package com.hiredjobsearch.app.modules.language.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.databinding.RowEnglishukBinding
import com.hiredjobsearch.app.modules.language.`data`.model.EnglishukRowModel
import kotlin.Int
import kotlin.collections.List

class EnglishUKAdapter(
  var list: List<EnglishukRowModel>
) : RecyclerView.Adapter<EnglishUKAdapter.RowEnglishukVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowEnglishukVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_englishuk,parent,false)
    return RowEnglishukVH(view)
  }

  override fun onBindViewHolder(holder: RowEnglishukVH, position: Int) {
    val englishukRowModel = EnglishukRowModel()
    // TODO uncomment following line after integration with data source
    // val englishukRowModel = list[position]
    holder.binding.englishukRowModel = englishukRowModel
  }

  override fun getItemCount(): Int = 3
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<EnglishukRowModel>) {
    list = newData
    notifyDataSetChanged()
  }

  fun setOnItemClickListener(clickListener: OnItemClickListener) {
    this.clickListener = clickListener
  }

  interface OnItemClickListener {
    fun onItemClick(
      view: View,
      position: Int,
      item: EnglishukRowModel
    ) {
    }
  }

  inner class RowEnglishukVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowEnglishukBinding = RowEnglishukBinding.bind(itemView)
  }
}
