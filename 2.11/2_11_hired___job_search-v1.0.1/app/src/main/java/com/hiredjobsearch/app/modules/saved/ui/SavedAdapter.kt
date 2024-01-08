package com.hiredjobsearch.app.modules.saved.ui

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.RecyclerView
import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.databinding.RowSavedBinding
import com.hiredjobsearch.app.modules.saved.`data`.model.SavedRowModel
import kotlin.Int
import kotlin.collections.List

class SavedAdapter(
  var list: List<SavedRowModel>
) : RecyclerView.Adapter<SavedAdapter.RowSavedVH>() {
  private var clickListener: OnItemClickListener? = null

  override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): RowSavedVH {
    val view=LayoutInflater.from(parent.context).inflate(R.layout.row_saved,parent,false)
    return RowSavedVH(view)
  }

  override fun onBindViewHolder(holder: RowSavedVH, position: Int) {
    val savedRowModel = SavedRowModel()
    // TODO uncomment following line after integration with data source
    // val savedRowModel = list[position]
    holder.binding.savedRowModel = savedRowModel
  }

  override fun getItemCount(): Int = 4
  // TODO uncomment following line after integration with data source
  // return list.size

  public fun updateData(newData: List<SavedRowModel>) {
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
      item: SavedRowModel
    ) {
    }
  }

  inner class RowSavedVH(
    view: View
  ) : RecyclerView.ViewHolder(view) {
    val binding: RowSavedBinding = RowSavedBinding.bind(itemView)
    init {
      binding.linearBag.setOnClickListener {
        // TODO replace with value from datasource
        clickListener?.onItemClick(it, adapterPosition, SavedRowModel())
      }
    }
  }
}
